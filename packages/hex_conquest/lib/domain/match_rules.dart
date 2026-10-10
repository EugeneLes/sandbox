import 'package:hex_conquest/domain/hex_math.dart';
import 'package:hex_conquest/domain/models/axial.dart';
import 'package:hex_conquest/domain/models/hex_cell.dart';
import 'package:hex_conquest/domain/models/match.dart';
import 'package:hex_conquest/domain/models/match_config.dart';

Match startMatch(MatchConfig config) {
  final board = <Axial, HexCell>{
    for (final cell in cellsWithin(config.radius)) cell: const HexCell(),
  };
  final seats = seatPlayers(config.radius, config.playerNames.length);
  for (var index = 0; index < seats.length; index++) {
    board[seats[index]] = HexCell(
      owner: index,
      strongholdOwner: index,
      scoutOwner: index,
    );
  }
  return Match(
    radius: config.radius,
    playerNames: List.unmodifiable(config.playerNames),
    mode: config.mode,
    turnSeconds: config.turnSeconds,
    board: board,
    currentPlayer: 0,
    hasMoved: false,
    hasBuilt: false,
    winner: leadingPlayer(board),
  );
}

Axial? scoutCell(Match match, int player) {
  for (final entry in match.board.entries) {
    if (entry.value.scoutOwner == player) return entry.key;
  }
  return null;
}

/// A player wins by owning strictly more than half of the cells.
int? leadingPlayer(Map<Axial, HexCell> board) {
  final counts = <int, int>{};
  for (final cell in board.values) {
    final owner = cell.owner;
    if (owner == null) continue;
    counts[owner] = (counts[owner] ?? 0) + 1;
  }
  final total = board.length;
  for (final entry in counts.entries) {
    if (entry.value * 2 > total) return entry.key;
  }
  return null;
}

List<Axial> legalScoutDestinations(Match match) {
  if (!_canAct(match) || match.hasMoved) return const [];
  final scout = scoutCell(match, match.currentPlayer);
  if (scout == null) return const [];
  final parents = _parents(match, scout);
  return [
    for (final cell in parents.keys)
      if (cell != scout) cell,
  ];
}

Match moveScout(Match match, Axial destination) {
  if (!_canAct(match) || match.hasMoved) return match;
  final scout = scoutCell(match, match.currentPlayer);
  if (scout == null) return match;
  final parents = _parents(match, scout);
  if (!parents.containsKey(destination) || destination == scout) return match;

  final path = _path(parents, destination);
  final board = Map<Axial, HexCell>.of(match.board);
  var from = scout;
  final player = match.currentPlayer;
  for (final step in path.skip(1)) {
    final leaving = board[from]!;
    final entering = board[step]!;
    final enemyHold = entering.strongholdOwner != null && entering.strongholdOwner != player;
    board[from] = HexCell(
      owner: leaving.owner,
      strongholdOwner: leaving.strongholdOwner,
    );
    board[step] = HexCell(
      owner: player,
      strongholdOwner: enemyHold ? null : entering.strongholdOwner,
      scoutOwner: player,
    );
    from = step;
  }

  return match.copyWith(
    board: board,
    hasMoved: true,
    winner: leadingPlayer(board),
    updateWinner: true,
  );
}

List<Axial> buildableCells(Match match) {
  if (!_canAct(match) || match.hasBuilt) return const [];
  final player = match.currentPlayer;
  return [
    for (final entry in match.board.entries)
      if (entry.value.owner == player &&
          entry.value.strongholdOwner == null &&
          entry.value.scoutOwner == null)
        entry.key,
  ];
}

Match placeStronghold(Match match, Axial cell) {
  if (!_canAct(match) || match.hasBuilt) return match;
  if (!buildableCells(match).contains(cell)) return match;
  final current = match.board[cell]!;
  final board = Map<Axial, HexCell>.of(match.board);
  board[cell] = HexCell(
    owner: current.owner,
    strongholdOwner: match.currentPlayer,
  );
  return match.copyWith(board: board, hasBuilt: true);
}

/// Shared by the End turn action and live-timer expiry.
Match endTurn(Match match) {
  if (match.winner != null) return match;
  final next = (match.currentPlayer + 1) % match.playerNames.length;
  return match.copyWith(
    currentPlayer: next,
    hasMoved: false,
    hasBuilt: false,
  );
}

bool _canAct(Match match) => match.winner == null;

Map<Axial, Axial?> _parents(Match match, Axial scout) {
  final player = match.currentPlayer;
  final parents = <Axial, Axial?>{scout: null};
  final queue = <Axial>[scout];
  final depth = <Axial, int>{scout: 0};

  while (queue.isNotEmpty) {
    final current = queue.removeAt(0);
    final steps = depth[current]!;
    if (steps >= 2) continue;
    for (final next in current.neighbors) {
      if (parents.containsKey(next)) continue;
      final cell = match.board[next];
      if (cell == null || cell.scoutOwner != null) continue;
      parents[next] = current;
      depth[next] = steps + 1;
      final enemyHold = cell.strongholdOwner != null && cell.strongholdOwner != player;
      if (!enemyHold && steps + 1 < 2) queue.add(next);
    }
  }
  return parents;
}

List<Axial> _path(Map<Axial, Axial?> parents, Axial destination) {
  final path = <Axial>[];
  Axial? cursor = destination;
  while (cursor != null) {
    path.add(cursor);
    cursor = parents[cursor];
  }
  return path.reversed.toList();
}
