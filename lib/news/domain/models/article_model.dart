import 'package:sandbox/news/domain/models/source_model.dart';

class ArticleModel {
  final int? id;
  final SourceModel source;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;
  final bool isFavorite;

  ArticleModel({
    this.id,
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
    this.isFavorite = false,
  });
}
