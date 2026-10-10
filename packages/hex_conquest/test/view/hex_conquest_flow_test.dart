import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hex_conquest/hex_conquest.dart';
import 'package:hex_conquest/view/bloc/hex_conquest_bloc.dart';
import 'package:hex_conquest/view/model/game_view_model.dart';
import 'package:hex_conquest/view/widgets/hex_board.dart';

void main() {
  testWidgets('menu opens the new game config', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: HexConquestFlow()));
    await tester.tap(find.text('Start new game'));
    await tester.pumpAndSettle();

    expect(find.text('New game'), findsOneWidget);
    expect(find.text('Start'), findsOneWidget);
  });

  testWidgets('start stays disabled until every name is filled', (tester) async {
    await _openConfig(tester);
    expect(tester.widget<FilledButton>(find.widgetWithText(FilledButton, 'Start')).onPressed,
        isNotNull);

    await tester.enterText(find.byType(TextField).first, '   ');
    await tester.pump();
    expect(
        tester.widget<FilledButton>(find.widgetWithText(FilledButton, 'Start')).onPressed, isNull);

    await tester.enterText(find.byType(TextField).first, 'Ada');
    await tester.pump();
    expect(tester.widget<FilledButton>(find.widgetWithText(FilledButton, 'Start')).onPressed,
        isNotNull);
  });

  testWidgets('turn length is shown only in live mode', (tester) async {
    await _openConfig(tester);
    expect(find.text('15 seconds'), findsNothing);

    await tester.tap(find.text('Live'));
    await tester.pump();

    expect(find.text('Turn length'), findsOneWidget);
    expect(find.text('15 seconds'), findsOneWidget);
    expect(find.text('30 seconds'), findsOneWidget);
    expect(find.text('60 seconds'), findsOneWidget);
  });

  testWidgets('starting shows the board, the first player, and their scout', (tester) async {
    await _startStepGame(tester);

    expect(find.byType(HexBoard), findsOneWidget);
    expect(find.text('Current player: Player 1'), findsOneWidget);
    expect(find.bySemanticsLabel('Player 1 scout'), findsOneWidget);
  });

  testWidgets('step-by-step waits for End turn and live advances at zero', (tester) async {
    await _startStepGame(tester);
    await tester.pump(const Duration(seconds: 5));
    expect(find.text('Current player: Player 1'), findsOneWidget);

    await tester.tap(find.text('End turn'));
    await tester.pump();
    expect(find.text('Current player: Player 2'), findsOneWidget);

    await tester.pumpWidget(const SizedBox());
    tester.view.physicalSize = const Size(800, 1400);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await _openConfig(tester);
    await tester.tap(find.text('Live'));
    await tester.pump();
    await tester.tap(find.text('Start'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 400));

    expect(find.text('Current player: Player 1'), findsOneWidget);
    expect(find.text('Time left: 15'), findsOneWidget);
    expect(find.text('End turn'), findsNothing);

    await tester.pump(const Duration(seconds: 15));
    expect(find.text('Current player: Player 2'), findsOneWidget);
  });

  testWidgets('the win banner appears when one player owns more than half', (tester) async {
    await _startStepGame(tester);
    final bloc = tester.element(find.byType(HexBoard)).read<HexConquestBloc>();

    for (var guard = 0; guard < 40; guard++) {
      final state = bloc.state;
      if (state is! HexConquestPlayingState) fail('match did not start');
      if (state.viewModel.winnerName != null) break;

      if (state.viewModel.currentPlayerIndex != 0) {
        bloc.add(const HexConquestEvent.endTurn());
        await tester.pump();
        continue;
      }

      final scout = state.viewModel.tiles.firstWhere((tile) => tile.selected).axial;
      HexTileView? destination;
      var bestDistance = 99;
      for (final tile in state.viewModel.tiles) {
        if (!tile.legalDestination || tile.owner == 0) continue;
        final distance = tile.axial.distanceTo(scout);
        if (distance < bestDistance) {
          bestDistance = distance;
          destination = tile;
        }
      }
      expect(destination, isNotNull, reason: 'Player 1 has a cell to capture');
      bloc.add(HexConquestEvent.move(destination!.axial));
      await tester.pump();
      final updated = bloc.state;
      if (updated is HexConquestPlayingState && updated.viewModel.winnerName != null) break;
      bloc.add(const HexConquestEvent.endTurn());
      await tester.pump();
    }

    await tester.pump();
    expect(find.text('Player 1 wins'), findsOneWidget);
    expect(find.byKey(const Key('win-banner')), findsOneWidget);
  });
}

Future<void> _openConfig(WidgetTester tester) async {
  await tester.pumpWidget(const MaterialApp(home: HexConquestFlow()));
  await tester.tap(find.text('Start new game'));
  await tester.pumpAndSettle();
}

Future<void> _startStepGame(WidgetTester tester) async {
  await _openConfig(tester);
  await tester.ensureVisible(find.text('Start'));
  await tester.tap(find.text('Start'));
  await tester.pumpAndSettle();
}
