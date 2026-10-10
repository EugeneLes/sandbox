import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hex_conquest/view/bloc/hex_conquest_bloc.dart';
import 'package:hex_conquest/view/model/game_view_model.dart';
import 'package:hex_conquest/view/widgets/hex_board.dart';

class GameContent extends StatefulWidget {
  const GameContent({super.key, required this.model});

  final GameViewModel model;

  @override
  State<GameContent> createState() => _GameContentState();
}

class _GameContentState extends State<GameContent> {
  bool _buildMode = false;
  bool _popAllowed = false;

  @override
  void didUpdateWidget(GameContent oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.model.currentPlayerIndex != widget.model.currentPlayerIndex) {
      _buildMode = false;
    }
  }

  Future<void> _confirmLeave() async {
    final leave = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Leave game?'),
        content: const Text('The match will be discarded.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Stay'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Leave'),
          ),
        ],
      ),
    );
    if (leave != true || !mounted) return;
    setState(() => _popAllowed = true);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) Navigator.of(context).pop();
    });
  }

  void _onTile(HexTileView tile) {
    final model = widget.model;
    if (model.winnerName != null) return;
    final bloc = context.read<HexConquestBloc>();
    if (_buildMode && tile.canBuild) {
      bloc.add(HexConquestEvent.build(tile.axial));
      setState(() => _buildMode = false);
      return;
    }
    if (tile.legalDestination) bloc.add(HexConquestEvent.move(tile.axial));
  }

  @override
  Widget build(BuildContext context) {
    final model = widget.model;
    return PopScope(
      canPop: _popAllowed,
      onPopInvokedWithResult: (didPop, _) {
        if (didPop) return;
        _confirmLeave();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Current player: ${model.currentPlayerName}'),
          leading: IconButton(
            tooltip: 'Back to menu',
            onPressed: _confirmLeave,
            icon: const Icon(Icons.arrow_back),
          ),
          actions: [
            IconButton(
              tooltip: 'Place stronghold',
              isSelected: _buildMode,
              onPressed: model.winnerName != null || model.hasBuilt
                  ? null
                  : () => setState(() => _buildMode = !_buildMode),
              icon: const Icon(Icons.castle),
            ),
          ],
        ),
        body: Column(
          children: [
            if (model.winnerName != null)
              Material(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      '${model.winnerName} wins',
                      key: const Key('win-banner'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
              child: Wrap(
                spacing: 12,
                runSpacing: 4,
                children: [
                  for (var index = 0; index < model.playerNames.length; index++)
                    Text('${model.playerNames[index]}: ${model.cellsOwned[index]}'),
                ],
              ),
            ),
            if (model.remainingSeconds != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text('Time left: ${model.remainingSeconds}'),
              ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: HexBoard(
                  tiles: model.tiles,
                  playerNames: model.playerNames,
                  buildMode: _buildMode,
                  onTap: _onTile,
                ),
              ),
            ),
            if (model.showEndTurn)
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: FilledButton(
                  onPressed: () => context.read<HexConquestBloc>().add(
                        const HexConquestEvent.endTurn(),
                      ),
                  child: const Text('End turn'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
