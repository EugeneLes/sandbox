import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hex_conquest/domain/models/match_config.dart';
import 'package:hex_conquest/view/bloc/hex_conquest_bloc.dart';
import 'package:hex_conquest/view/page/game_content.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key, required this.config});

  final MatchConfig config;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HexConquestBloc()..start(config),
      child: BlocBuilder<HexConquestBloc, HexConquestState>(
        builder: (context, state) => state.when(
          initial: () => const SizedBox(),
          playing: (model) => GameContent(model: model),
        ),
      ),
    );
  }
}
