import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:hex_conquest/domain/models/axial.dart';
import 'package:hex_conquest/view/model/game_view_model.dart';

const playerColors = <Color>[
  Color(0xFF1565C0),
  Color(0xFFC62828),
  Color(0xFF2E7D32),
  Color(0xFFEF6C00),
];

const neutralColor = Color(0xFFE0E0E0);

Color colorForOwner(int? owner) {
  if (owner == null || owner < 0 || owner >= playerColors.length) return neutralColor;
  return playerColors[owner];
}

/// Flat-top hex board. [size] is the center-to-vertex distance.
class HexBoard extends StatelessWidget {
  const HexBoard({
    super.key,
    required this.tiles,
    required this.playerNames,
    required this.buildMode,
    required this.onTap,
    this.size = 28,
  });

  final List<HexTileView> tiles;
  final List<String> playerNames;
  final bool buildMode;
  final ValueChanged<HexTileView> onTap;
  final double size;

  @override
  Widget build(BuildContext context) {
    final layout = HexLayout(size: size, tiles: tiles);
    return FittedBox(
      child: SizedBox(
        width: layout.width,
        height: layout.height,
        child: Stack(
          children: [
            CustomPaint(
              size: Size(layout.width, layout.height),
              painter: _HexPainter(
                layout: layout,
                tiles: tiles,
                buildMode: buildMode,
              ),
            ),
            for (final tile in tiles)
              Positioned(
                left: layout.origin(tile.axial).dx,
                top: layout.origin(tile.axial).dy,
                width: layout.hitWidth,
                height: layout.hitHeight,
                child: _HexHitTarget(
                  tile: tile,
                  playerNames: playerNames,
                  onTap: () => onTap(tile),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class HexLayout {
  HexLayout({
    required this.size,
    required List<HexTileView> tiles,
  }) {
    var minX = double.infinity;
    var minY = double.infinity;
    var maxX = -double.infinity;
    var maxY = -double.infinity;
    for (final tile in tiles) {
      final center = _raw(tile.axial);
      minX = math.min(minX, center.dx);
      minY = math.min(minY, center.dy);
      maxX = math.max(maxX, center.dx);
      maxY = math.max(maxY, center.dy);
    }
    _shift = Offset(size - minX, hitHeight / 2 - minY);
    width = maxX - minX + size * 2;
    height = maxY - minY + hitHeight;
  }

  final double size;
  late final Offset _shift;
  late final double width;
  late final double height;

  double get hitWidth => size * 2;
  double get hitHeight => math.sqrt(3) * size;

  Offset center(Axial axial) => _raw(axial) + _shift;

  Offset origin(Axial axial) => center(axial) - Offset(hitWidth / 2, hitHeight / 2);

  Offset _raw(Axial axial) {
    return Offset(
      size * (1.5 * axial.q),
      size * (math.sqrt(3) / 2 * axial.q + math.sqrt(3) * axial.r),
    );
  }

  List<Offset> corners(Axial axial) {
    final c = center(axial);
    return List.generate(6, (index) {
      final angle = math.pi / 180 * (60 * index);
      return Offset(c.dx + size * math.cos(angle), c.dy + size * math.sin(angle));
    });
  }
}

class _HexHitTarget extends StatelessWidget {
  const _HexHitTarget({
    required this.tile,
    required this.playerNames,
    required this.onTap,
  });

  final HexTileView tile;
  final List<String> playerNames;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scout = tile.scoutOwner;
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (tile.hasStronghold)
              Semantics(
                container: true,
                label: '${playerNames[tile.owner!]} stronghold',
                child: Icon(
                  Icons.castle,
                  size: 14,
                  color: _iconColor(tile.owner),
                ),
              ),
            if (scout != null)
              Semantics(
                container: true,
                label: '${playerNames[scout]} scout',
                child: Icon(
                  Icons.explore,
                  size: 16,
                  color: _iconColor(scout),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Color _iconColor(int? owner) {
    final color = colorForOwner(owner);
    return color.computeLuminance() > 0.5 ? Colors.black87 : Colors.white;
  }
}

class _HexPainter extends CustomPainter {
  const _HexPainter({
    required this.layout,
    required this.tiles,
    required this.buildMode,
  });

  final HexLayout layout;
  final List<HexTileView> tiles;
  final bool buildMode;

  @override
  void paint(Canvas canvas, Size size) {
    for (final tile in tiles) {
      final path = Path()..addPolygon(layout.corners(tile.axial), true);
      canvas.drawPath(
        path,
        Paint()..color = colorForOwner(tile.owner),
      );
      if (tile.legalDestination) {
        canvas.drawPath(
          path,
          Paint()..color = const Color(0xFFFFC107).withValues(alpha: 0.55),
        );
      }
      if (buildMode && tile.canBuild) {
        canvas.drawPath(
          path,
          Paint()..color = const Color(0xFF66BB6A).withValues(alpha: 0.45),
        );
      }
      final stroke = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = tile.selected ? 3 : 1
        ..color = tile.selected ? const Color(0xFFFFEB3B) : const Color(0xFF424242);
      canvas.drawPath(path, stroke);
    }
  }

  @override
  bool shouldRepaint(covariant _HexPainter oldDelegate) => true;
}
