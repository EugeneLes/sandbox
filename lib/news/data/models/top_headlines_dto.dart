import 'package:json_annotation/json_annotation.dart';
import 'package:sandbox/news/data/models/article_dto.dart';

part 'top_headlines_dto.g.dart';

@JsonSerializable()
class TopHeadlinesDTO {
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'totalResults')
  final int totalResults;
  @JsonKey(name: 'articles')
  final List<ArticleDTO> articles;

  TopHeadlinesDTO({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  factory TopHeadlinesDTO.fromJson(Map<String, dynamic> json) => _$TopHeadlinesDTOFromJson(json);

  Map<String, dynamic> toJson() => _$TopHeadlinesDTOToJson(this);
}
