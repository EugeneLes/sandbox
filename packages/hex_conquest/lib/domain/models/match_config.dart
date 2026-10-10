enum GameMode { stepByStep, live }

class MatchConfig {
  const MatchConfig({
    required this.playerNames,
    required this.radius,
    required this.mode,
    this.turnSeconds = 15,
  });

  final List<String> playerNames;
  final int radius;
  final GameMode mode;
  final int turnSeconds;
}
