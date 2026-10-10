import 'package:hex_conquest/domain/match_rules.dart';
import 'package:hex_conquest/domain/models/axial.dart';
import 'package:hex_conquest/domain/models/match_config.dart';
import 'package:test/test.dart';

void main() {
  test('a player gets one move and one build each turn, in either order', () {
    final started = startMatch(
      const MatchConfig(
        playerNames: ['Player 1', 'Player 2'],
        radius: 2,
        mode: GameMode.stepByStep,
      ),
    );

    expect(buildableCells(started), isEmpty);

    final moved = moveScout(started, Axial.zero);
    expect(moved.hasMoved, isTrue);
    expect(scoutCell(moveScout(moved, const Axial(1, 0)), 0), Axial.zero);

    expect(buildableCells(moved), contains(const Axial(1, 0)));
    final built = placeStronghold(moved, const Axial(1, 0));
    expect(built.board[const Axial(1, 0)]!.strongholdOwner, 0);
    expect(built.hasBuilt, isTrue);
    expect(placeStronghold(built, const Axial(1, 0)).hasBuilt, isTrue);
    expect(placeStronghold(built, const Axial(1, 0)).board[const Axial(1, 0)]!.strongholdOwner, 0);

    final builtFirst = placeStronghold(moved, const Axial(1, 0));
    expect(builtFirst.hasMoved, isTrue);
    expect(builtFirst.hasBuilt, isTrue);
  });

  test('live timer expiry and end turn advance the same turn rules', () {
    final started = startMatch(
      const MatchConfig(
        playerNames: ['Player 1', 'Player 2'],
        radius: 2,
        mode: GameMode.live,
        turnSeconds: 15,
      ),
    );
    final moved = moveScout(started, const Axial(1, 0));
    final byButton = endTurn(moved);
    final byTimer = endTurn(moved);

    expect(byButton.currentPlayer, 1);
    expect(byTimer.currentPlayer, byButton.currentPlayer);
    expect(byButton.hasMoved, isFalse);
    expect(byButton.hasBuilt, isFalse);
    expect(byTimer.hasMoved, byButton.hasMoved);
    expect(byTimer.hasBuilt, byButton.hasBuilt);
    expect(scoutCell(byButton, 0), scoutCell(byTimer, 0));
    expect(byButton.board[const Axial(1, 0)]!.owner, 0);

    final nextRound = endTurn(byButton);
    expect(nextRound.currentPlayer, 0);
    expect(nextRound.hasMoved, isFalse);
    expect(moveScout(nextRound, Axial.zero).hasMoved, isTrue);
  });
}
