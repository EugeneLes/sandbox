import 'package:flutter/material.dart';
import 'package:hex_conquest/domain/models/match_config.dart';
import 'package:hex_conquest/view/page/game_page.dart';
import 'package:hex_conquest/view/page/main_menu_page.dart';
import 'package:hex_conquest/view/page/new_game_config_page.dart';

/// Menu, match setup, and the board, in a local navigator.
class HexConquestFlow extends StatelessWidget {
  const HexConquestFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: 'menu',
      onGenerateRoute: (settings) {
        final page = switch (settings.name) {
          'config' => const NewGameConfigPage(),
          'game' => GamePage(config: settings.arguments! as MatchConfig),
          _ => const MainMenuPage(),
        };
        return MaterialPageRoute<void>(
          settings: settings,
          builder: (context) => page,
        );
      },
    );
  }
}
