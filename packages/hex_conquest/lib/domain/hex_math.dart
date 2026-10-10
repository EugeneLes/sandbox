import 'package:hex_conquest/domain/models/axial.dart';

/// Cells with `max(|q|, |r|, |q + r|) <= radius`.
List<Axial> cellsWithin(int radius) {
  final cells = <Axial>[];
  for (var q = -radius; q <= radius; q++) {
    for (var r = -radius; r <= radius; r++) {
      final cell = Axial(q, r);
      if (cell.withinRadius(radius)) cells.add(cell);
    }
  }
  return cells;
}

/// Rim cells in ring order, starting at `(radius, 0)` and walking clockwise.
List<Axial> rimCells(int radius) {
  if (radius == 0) return const [Axial.zero];

  final cells = <Axial>[];
  var hex = Axial(radius, 0);
  const startDir = 2;
  for (var side = 0; side < Axial.neighborDirs.length; side++) {
    final dir = Axial.neighborDirs[(startDir + side) % Axial.neighborDirs.length];
    for (var step = 0; step < radius; step++) {
      cells.add(hex);
      hex += dir;
    }
  }
  return cells;
}

/// Seats spaced as evenly as the rim allows, in ring order.
List<Axial> seatPlayers(int radius, int playerCount) {
  final rim = rimCells(radius);
  return [
    for (var index = 0; index < playerCount; index++) rim[(index * rim.length) ~/ playerCount],
  ];
}
