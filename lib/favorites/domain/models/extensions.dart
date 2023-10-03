import 'package:sandbox/favorites/data/models/article.dart';
import 'package:sandbox/favorites/data/repo/favorites_repository.dart';
import 'package:sandbox/news/domain/models/article_model.dart';
import 'package:sandbox/news/view/bloc/sources_bloc.dart';
import 'package:sandbox/news/view/model/news_article_view_model.dart';

extension ArticleModelX on ArticleModel {
  Article toIsarModel() => Article()
    ..author = author
    ..source = source.toIsarModel()
    ..title = title
    ..description = description
    ..url = url
    ..urlToImage = urlToImage
    ..publishedAt = publishedAt
    ..content = content;

  NewsArticleViewModel toViewModel() => NewsArticleViewModel(
        id,
        source.toViewModel(),
        title,
        author,
        description,
        url,
        urlToImage,
        publishedAt,
        content,
        isFavorite: isFavorite,
      );
}
