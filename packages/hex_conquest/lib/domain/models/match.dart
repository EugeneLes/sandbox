import 'package:hex_conquest/domain/models/axial.dart';
import 'package:hex_conquest/domain/models/hex_cell.dart';
import 'package:hex_conquest/domain/models/match_config.dart';

class Match {
  const Match({
    required this.radius,
    required this.playerNames,
    required this.mode,
    required this.turnSeconds,
    required this.board,
    required this.currentPlayer,
    required this.hasMoved,
    required this.hasBuilt,
    required this.winner,
  });

  final int radius;
  final List<String> playerNames;
  final GameMode mode;
  final int turnSeconds;
  final Map<Axial, HexCell> board;
  final int currentPlayer;
  final bool hasMoved;
  final bool hasBuilt;
  final int? winner;

  Match copyWith({
    Map<Axial, HexCell>? board,
    int? currentPlayer,
    bool? hasMoved,
    bool? hasBuilt,
    int? winner,
    bool updateWinner = false,
  }) {
    return Match(
      radius: radius,
      playerNames: playerNames,
      mode: mode,
      turnSeconds: turnSeconds,
      board: board ?? this.board,
      currentPlayer: currentPlayer ?? this.currentPlayer,
      hasMoved: hasMoved ?? this.hasMoved,
      hasBuilt: hasBuilt ?? this.hasBuilt,
      winner: updateWinner ? winner : this.winner,
    );
  }
}
