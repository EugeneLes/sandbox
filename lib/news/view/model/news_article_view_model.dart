import 'package:sandbox/news/view/model/source_view_model.dart';

class NewsArticleViewModel {
  final int? id;
  final SourceViewModel source;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;
  final bool isFavorite;

  NewsArticleViewModel(this.id, this.source, this.title, this.author, this.description, this.url,
      this.urlToImage, this.publishedAt, this.content,
      {this.isFavorite = false});

  @override
  String toString() {
    return 'NewsArticle(id: $id, title:$title, author:$author, description:$description, url:$url, urlToImage:$urlToImage, publishedAt:$publishedAt, content:$content, isFavorite:$isFavorite)';
  }
}
