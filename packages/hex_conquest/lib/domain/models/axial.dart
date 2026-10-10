import 'dart:math' as math;

/// Axial hex coordinate `(q, r)`. The third cube axis is `s = -q - r`.
class Axial {
  const Axial(this.q, this.r);

  final int q;
  final int r;

  static const zero = Axial(0, 0);

  /// Neighbor offsets in clockwise order, starting from the +q direction.
  static const neighborDirs = <Axial>[
    Axial(1, 0),
    Axial(1, -1),
    Axial(0, -1),
    Axial(-1, 0),
    Axial(-1, 1),
    Axial(0, 1),
  ];

  int get s => -q - r;

  Axial operator +(Axial other) => Axial(q + other.q, r + other.r);

  Iterable<Axial> get neighbors => neighborDirs.map((dir) => this + dir);

  int distanceTo(Axial other) {
    final dq = (q - other.q).abs();
    final dr = (r - other.r).abs();
    final ds = (s - other.s).abs();
    return math.max(dq, math.max(dr, ds));
  }

  bool withinRadius(int radius) => distanceTo(zero) <= radius;

  @override
  bool operator ==(Object other) => other is Axial && other.q == q && other.r == r;

  @override
  int get hashCode => Object.hash(q, r);

  @override
  String toString() => 'Axial($q, $r)';
}
