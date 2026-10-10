import 'package:hex_conquest/domain/hex_math.dart';
import 'package:hex_conquest/domain/models/axial.dart';
import 'package:test/test.dart';

void main() {
  test('neighbors are the six axial offsets', () {
    expect(Axial.zero.neighbors, [
      const Axial(1, 0),
      const Axial(1, -1),
      const Axial(0, -1),
      const Axial(-1, 0),
      const Axial(-1, 1),
      const Axial(0, 1),
    ]);
  });

  test('distance uses the radius boundary', () {
    expect(const Axial(2, -2).distanceTo(Axial.zero), 2);
    expect(const Axial(2, -2).withinRadius(2), isTrue);
    expect(const Axial(3, 0).withinRadius(2), isFalse);
    expect(const Axial(2, 1).withinRadius(2), isFalse);
    expect(const Axial(1, 0).distanceTo(const Axial(1, -1)), 1);

    final disk = cellsWithin(2);
    expect(disk, hasLength(19));
    expect(disk.every((cell) => cell.withinRadius(2)), isTrue);
    expect(disk, contains(const Axial(2, -2)));
    expect(disk, isNot(contains(const Axial(3, -1))));
    expect(disk, isNot(contains(const Axial(2, 1))));
  });

  test('rim cells sit on the radius and do not repeat', () {
    final rim = rimCells(2);
    expect(rim, hasLength(12));
    expect(rim.toSet(), hasLength(12));
    expect(rim.first, const Axial(2, 0));
    expect(rim.every((cell) => cell.distanceTo(Axial.zero) == 2), isTrue);

    final medium = rimCells(3);
    expect(medium, hasLength(18));
    expect(medium.toSet(), hasLength(18));
    expect(medium.every((cell) => cell.distanceTo(Axial.zero) == 3), isTrue);
  });
}
