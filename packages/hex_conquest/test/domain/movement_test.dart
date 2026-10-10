import 'package:hex_conquest/domain/hex_math.dart';
import 'package:hex_conquest/domain/match_rules.dart';
import 'package:hex_conquest/domain/models/axial.dart';
import 'package:hex_conquest/domain/models/hex_cell.dart';
import 'package:hex_conquest/domain/models/match.dart';
import 'package:hex_conquest/domain/models/match_config.dart';
import 'package:test/test.dart';

Match _open({int radius = 3, Axial scout = Axial.zero}) {
  final board = <Axial, HexCell>{
    for (final cell in cellsWithin(radius)) cell: const HexCell(),
  };
  board[scout] = const HexCell(owner: 0, scoutOwner: 0);
  return Match(
    radius: radius,
    playerNames: const ['Player 1', 'Player 2'],
    mode: GameMode.stepByStep,
    turnSeconds: 15,
    board: board,
    currentPlayer: 0,
    hasMoved: false,
    hasBuilt: false,
    winner: null,
  );
}

void main() {
  test('a scout can reach cells up to two hexes away', () {
    final match = _open();
    final legal = legalScoutDestinations(match);

    expect(legal, contains(const Axial(1, 0)));
    expect(legal, contains(const Axial(2, 0)));
    expect(legal, isNot(contains(Axial.zero)));
    expect(legal, isNot(contains(const Axial(3, 0))));
    expect(legal.every((cell) => cell.distanceTo(Axial.zero) <= 2), isTrue);
  });

  test('scouts cannot stack or pass through each other', () {
    final match = _open();
    final board = Map<Axial, HexCell>.of(match.board);
    board[const Axial(1, 0)] = const HexCell(owner: 1, scoutOwner: 1);
    final blocked = match.copyWith(board: board);

    final legal = legalScoutDestinations(blocked);
    expect(legal, isNot(contains(const Axial(1, 0))));
    expect(legal, isNot(contains(const Axial(2, 0))));

    final unchanged = moveScout(blocked, const Axial(1, 0));
    expect(scoutCell(unchanged, 0), Axial.zero);
    expect(unchanged.hasMoved, isFalse);
  });

  test('entering an empty cell captures it', () {
    final match = startMatch(
      const MatchConfig(
        playerNames: ['Player 1', 'Player 2'],
        radius: 2,
        mode: GameMode.stepByStep,
      ),
    );
    final moved = moveScout(match, const Axial(1, 0));

    expect(moved.board[const Axial(1, 0)]!.owner, 0);
    expect(moved.board[const Axial(1, 0)]!.scoutOwner, 0);
    expect(moved.board[const Axial(2, 0)]!.scoutOwner, isNull);
    expect(moved.board[const Axial(2, 0)]!.strongholdOwner, 0);
    expect(moved.hasMoved, isTrue);
  });

  test('entering an enemy stronghold removes it, captures, and stops', () {
    final match = _open(radius: 2);
    final board = Map<Axial, HexCell>.of(match.board);
    board[const Axial(1, 0)] = const HexCell(owner: 1, strongholdOwner: 1);
    final defended = match.copyWith(board: board);

    final legal = legalScoutDestinations(defended);
    expect(legal, contains(const Axial(1, 0)));
    expect(legal, isNot(contains(const Axial(2, 0))));

    final moved = moveScout(defended, const Axial(1, 0));
    expect(moved.board[const Axial(1, 0)]!.owner, 0);
    expect(moved.board[const Axial(1, 0)]!.strongholdOwner, isNull);
    expect(moved.board[const Axial(1, 0)]!.scoutOwner, 0);
    expect(scoutCell(moved, 0), const Axial(1, 0));
  });

  test('a two-hex path captures the cell it passes through', () {
    final match = startMatch(
      const MatchConfig(
        playerNames: ['Player 1', 'Player 2'],
        radius: 2,
        mode: GameMode.stepByStep,
      ),
    );
    final moved = moveScout(match, Axial.zero);

    expect(moved.board[const Axial(1, 0)]!.owner, 0);
    expect(moved.board[Axial.zero]!.owner, 0);
    expect(scoutCell(moved, 0), Axial.zero);
  });
}
