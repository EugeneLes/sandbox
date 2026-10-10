class HexCell {
  const HexCell({
    this.owner,
    this.strongholdOwner,
    this.scoutOwner,
  });

  final int? owner;
  final int? strongholdOwner;
  final int? scoutOwner;

  bool get hasStronghold => strongholdOwner != null;
  bool get hasScout => scoutOwner != null;
}
