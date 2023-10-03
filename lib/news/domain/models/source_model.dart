class SourceModel {
  final String id;

  final String name;
  final String? description;
  final String? url;
  final String? category;
  final String? language;
  final String? country;

  SourceModel({
    required this.id,
    required this.name,
    this.description,
    this.url,
    this.category,
    this.language,
    this.country,
  });
}
