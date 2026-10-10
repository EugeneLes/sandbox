import 'package:hex_conquest/domain/match_rules.dart';
import 'package:hex_conquest/domain/models/axial.dart';
import 'package:hex_conquest/domain/models/match_config.dart';
import 'package:test/test.dart';

void main() {
  for (final playerCount in [2, 3, 4]) {
    for (final radius in [2, 3]) {
      test('seats $playerCount players on a radius $radius map', () {
        final match = startMatch(
          MatchConfig(
            playerNames: [for (var index = 0; index < playerCount; index++) 'Player ${index + 1}'],
            radius: radius,
            mode: GameMode.stepByStep,
          ),
        );

        expect(match.board, hasLength(radius == 2 ? 19 : 37));
        expect(match.currentPlayer, 0);
        expect(match.winner, isNull);

        final seats = [for (var index = 0; index < playerCount; index++) scoutCell(match, index)!];
        expect(seats.toSet(), hasLength(playerCount));
        for (var index = 0; index < seats.length; index++) {
          final cell = match.board[seats[index]]!;
          expect(seats[index].distanceTo(Axial.zero), radius);
          expect(cell.owner, index);
          expect(cell.strongholdOwner, index);
          expect(cell.scoutOwner, index);
        }

        final owned = match.board.values.where((cell) => cell.owner != null);
        expect(owned, hasLength(playerCount));
      });
    }
  }

  test('two players start opposite each other', () {
    final match = startMatch(
      const MatchConfig(
        playerNames: ['Player 1', 'Player 2'],
        radius: 2,
        mode: GameMode.stepByStep,
      ),
    );
    expect(scoutCell(match, 0), const Axial(2, 0));
    expect(scoutCell(match, 1)!.distanceTo(scoutCell(match, 0)!), 4);
  });
}
