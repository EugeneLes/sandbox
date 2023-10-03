import 'package:json_annotation/json_annotation.dart';
import 'package:sandbox/news/data/models/source_dto.dart';

part 'sources_dto.g.dart';

@JsonSerializable()
class SourcesDTO {
  @JsonKey(name: 'status')
  final String status;

  @JsonKey(name: 'sources')
  final List<SourceDTO> sources;

  SourcesDTO({
    required this.status,
    required this.sources,
  });

  factory SourcesDTO.fromJson(Map<String, dynamic> json) => _$SourcesDTOFromJson(json);

  Map<String, dynamic> toJson() => _$SourcesDTOToJson(this);
}
