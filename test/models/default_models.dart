import 'package:sandbox/news/domain/models/article_model.dart';
import 'package:sandbox/news/domain/models/news_model.dart';
import 'package:sandbox/news/domain/models/source_model.dart';

class DefaultModels {
  static NewsModel newsModel = NewsModel([
    ArticleModel(
      source: sourceModel,
      author: 'author',
      title: 'title',
      description: 'description',
      url: 'url',
      urlToImage: 'urlToImage',
      publishedAt: 'publishedAt',
      content: 'content',
    )
  ]);

  static SourceModel sourceModel = SourceModel(id: 'sourceId1', name: 'sourceName1');
}
