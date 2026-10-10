import 'package:hex_conquest/domain/hex_math.dart';
import 'package:hex_conquest/domain/match_rules.dart';
import 'package:hex_conquest/domain/models/axial.dart';
import 'package:hex_conquest/domain/models/hex_cell.dart';
import 'package:hex_conquest/domain/models/match.dart';
import 'package:hex_conquest/domain/models/match_config.dart';
import 'package:test/test.dart';

void main() {
  test('owning half the cells is not a win, and one more is', () {
    final half = {
      Axial.zero: const HexCell(owner: 0),
      const Axial(1, 0): const HexCell(owner: 0),
      const Axial(0, -1): const HexCell(owner: 1),
      const Axial(1, -1): const HexCell(),
    };
    expect(leadingPlayer(half), isNull);

    final more = Map<Axial, HexCell>.of(half);
    more[const Axial(1, -1)] = const HexCell(owner: 0);
    expect(leadingPlayer(more), 0);
  });

  test('a small map is undecided at 9 cells and won at 10', () {
    final cells = cellsWithin(2);
    final board = <Axial, HexCell>{for (final cell in cells) cell: const HexCell()};
    board[Axial.zero] = const HexCell(owner: 0, scoutOwner: 0);
    final extras = cells.where((cell) => cell != Axial.zero && cell != const Axial(1, 0)).take(8);
    for (final cell in extras) {
      board[cell] = const HexCell(owner: 0);
    }
    expect(board.values.where((cell) => cell.owner == 0), hasLength(9));
    expect(leadingPlayer(board), isNull);

    final match = Match(
      radius: 2,
      playerNames: const ['Player 1', 'Player 2'],
      mode: GameMode.stepByStep,
      turnSeconds: 15,
      board: board,
      currentPlayer: 0,
      hasMoved: false,
      hasBuilt: false,
      winner: null,
    );
    final won = moveScout(match, const Axial(1, 0));
    expect(won.board.values.where((cell) => cell.owner == 0), hasLength(10));
    expect(won.winner, 0);
    expect(moveScout(won, const Axial(2, 0)), same(won));
  });
}
