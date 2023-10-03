import 'package:json_annotation/json_annotation.dart';
import 'package:sandbox/news/data/models/source_dto.dart';

part 'article_dto.g.dart';

@JsonSerializable()
class ArticleDTO {
  @JsonKey(name: 'source')
  final SourceDTO source;
  @JsonKey(name: 'author')
  final String author;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'url')
  final String url;
  @JsonKey(name: 'urlToImage')
  final String urlToImage;
  @JsonKey(name: 'publishedAt')
  final String publishedAt;
  @JsonKey(name: 'content')
  final String content;

  ArticleDTO({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory ArticleDTO.fromJson(Map<String, dynamic> json) => _$ArticleDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleDTOToJson(this);
}
