import 'package:json_annotation/json_annotation.dart';

part 'source_dto.g.dart';

@JsonSerializable()
class SourceDTO {
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'url')
  final String? url;
  @JsonKey(name: 'category')
  final String? category;
  @JsonKey(name: 'language')
  final String? language;
  @JsonKey(name: 'country')
  final String? country;

  SourceDTO({
    required this.id,
    required this.name,
    required this.description,
    required this.url,
    required this.category,
    required this.language,
    required this.country,
  });

  factory SourceDTO.fromJson(Map<String, dynamic> json) => _$SourceDTOFromJson(json);

  Map<String, dynamic> toJson() => _$SourceDTOToJson(this);
}
