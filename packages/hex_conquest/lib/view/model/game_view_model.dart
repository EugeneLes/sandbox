import 'package:hex_conquest/domain/match_rules.dart';
import 'package:hex_conquest/domain/models/axial.dart';
import 'package:hex_conquest/domain/models/match.dart';
import 'package:hex_conquest/domain/models/match_config.dart';

class HexTileView {
  const HexTileView({
    required this.axial,
    required this.owner,
    required this.hasStronghold,
    required this.scoutOwner,
    required this.selected,
    required this.legalDestination,
    required this.canBuild,
  });

  final Axial axial;
  final int? owner;
  final bool hasStronghold;
  final int? scoutOwner;
  final bool selected;
  final bool legalDestination;
  final bool canBuild;
}

class GameViewModel {
  const GameViewModel({
    required this.currentPlayerName,
    required this.currentPlayerIndex,
    required this.playerNames,
    required this.cellsOwned,
    required this.tiles,
    required this.showEndTurn,
    required this.remainingSeconds,
    required this.winnerName,
    required this.hasMoved,
    required this.hasBuilt,
    required this.radius,
  });

  final String currentPlayerName;
  final int currentPlayerIndex;
  final List<String> playerNames;
  final List<int> cellsOwned;
  final List<HexTileView> tiles;
  final bool showEndTurn;
  final int? remainingSeconds;
  final String? winnerName;
  final bool hasMoved;
  final bool hasBuilt;
  final int radius;
}

GameViewModel describeMatch(Match match, {int? remainingSeconds}) {
  final legal = legalScoutDestinations(match).toSet();
  final buildable = buildableCells(match).toSet();
  final scout = scoutCell(match, match.currentPlayer);
  final counts = List<int>.filled(match.playerNames.length, 0);
  final tiles = <HexTileView>[];

  for (final entry in match.board.entries) {
    final owner = entry.value.owner;
    if (owner != null) counts[owner] += 1;
    tiles.add(
      HexTileView(
        axial: entry.key,
        owner: owner,
        hasStronghold: entry.value.hasStronghold,
        scoutOwner: entry.value.scoutOwner,
        selected: scout == entry.key && match.winner == null && !match.hasMoved,
        legalDestination: legal.contains(entry.key),
        canBuild: buildable.contains(entry.key),
      ),
    );
  }

  final winner = match.winner;
  return GameViewModel(
    currentPlayerName: match.playerNames[match.currentPlayer],
    currentPlayerIndex: match.currentPlayer,
    playerNames: match.playerNames,
    cellsOwned: counts,
    tiles: tiles,
    showEndTurn: match.mode == GameMode.stepByStep && winner == null,
    remainingSeconds: match.mode == GameMode.live && winner == null ? remainingSeconds : null,
    winnerName: winner == null ? null : match.playerNames[winner],
    hasMoved: match.hasMoved,
    hasBuilt: match.hasBuilt,
    radius: match.radius,
  );
}
