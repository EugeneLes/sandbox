import 'package:flutter/material.dart';
import 'package:hex_conquest/domain/models/match_config.dart';

class NewGameConfigPage extends StatefulWidget {
  const NewGameConfigPage({super.key});

  @override
  State<NewGameConfigPage> createState() => _NewGameConfigPageState();
}

class _NewGameConfigPageState extends State<NewGameConfigPage> {
  final _names = List.generate(4, (index) => TextEditingController(text: 'Player ${index + 1}'));
  int _playerCount = 2;
  int _radius = 2;
  GameMode _mode = GameMode.stepByStep;
  int _turnSeconds = 15;

  @override
  void dispose() {
    for (final controller in _names) {
      controller.dispose();
    }
    super.dispose();
  }

  bool get _ready {
    for (var index = 0; index < _playerCount; index++) {
      if (_names[index].text.trim().isEmpty) return false;
    }
    return true;
  }

  void _start() {
    final names = [for (var index = 0; index < _playerCount; index++) _names[index].text.trim()];
    final config = MatchConfig(
      playerNames: names,
      radius: _radius,
      mode: _mode,
      turnSeconds: _turnSeconds,
    );
    Navigator.pushReplacementNamed(context, 'game', arguments: config);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New game')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('Players', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          _choices<int>(
            values: const [2, 3, 4],
            label: (value) => '$value',
            selected: _playerCount,
            onSelected: (value) => setState(() => _playerCount = value),
          ),
          const SizedBox(height: 12),
          for (var index = 0; index < _playerCount; index++)
            TextField(
              controller: _names[index],
              decoration: InputDecoration(labelText: 'Player ${index + 1}'),
              onChanged: (_) => setState(() {}),
            ),
          const SizedBox(height: 16),
          Text('Map size', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          _choices<int>(
            values: const [2, 3],
            label: (value) => value == 2 ? 'Small' : 'Medium',
            selected: _radius,
            onSelected: (value) => setState(() => _radius = value),
          ),
          const SizedBox(height: 16),
          Text('Mode', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          _choices<GameMode>(
            values: GameMode.values,
            label: (value) => switch (value) {
              GameMode.stepByStep => 'Step-by-step',
              GameMode.live => 'Live',
            },
            selected: _mode,
            onSelected: (value) => setState(() => _mode = value),
          ),
          if (_mode == GameMode.live) ...[
            const SizedBox(height: 16),
            Text('Turn length', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            _choices<int>(
              values: const [15, 30, 60],
              label: (value) => '$value seconds',
              selected: _turnSeconds,
              onSelected: (value) => setState(() => _turnSeconds = value),
            ),
          ],
          const SizedBox(height: 24),
          FilledButton(
            onPressed: _ready ? _start : null,
            child: const Text('Start'),
          ),
        ],
      ),
    );
  }

  Widget _choices<T>({
    required List<T> values,
    required String Function(T value) label,
    required T selected,
    required ValueChanged<T> onSelected,
  }) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (final value in values)
          ChoiceChip(
            label: Text(label(value)),
            selected: value == selected,
            onSelected: (_) => onSelected(value),
          ),
      ],
    );
  }
}
