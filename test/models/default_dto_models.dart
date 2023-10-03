import 'package:sandbox/favorites/data/models/article.dart';
import 'package:sandbox/news/data/models/article_dto.dart';
import 'package:sandbox/news/data/models/source_dto.dart';
import 'package:sandbox/news/data/models/top_headlines_dto.dart';

class DefaultDtoModels {
  static TopHeadlinesDTO topHeadlinesDto =
      TopHeadlinesDTO(status: 'ok', totalResults: 5, articles: [
    articleDto1,
    articleDto2,
    articleDto3,
    articleDto4,
    articleDto5,
  ]);

  static ArticleDTO articleDto1 = ArticleDTO(
    source: sourceDto,
    author: 'author1',
    title: 'title1',
    description: 'description1',
    url: 'url1',
    urlToImage: 'urlToImage1',
    publishedAt: 'publishedAt1',
    content: 'content1',
  );
  static ArticleDTO articleDto2 = ArticleDTO(
    source: sourceDto,
    author: 'author2',
    title: 'title2',
    description: 'description2',
    url: 'url2',
    urlToImage: 'urlToImage2',
    publishedAt: 'publishedAt2',
    content: 'content2',
  );
  static ArticleDTO articleDto3 = ArticleDTO(
    source: sourceDto,
    author: 'author3',
    title: 'title3',
    description: 'description3',
    url: 'url3',
    urlToImage: 'urlToImage3',
    publishedAt: 'publishedAt3',
    content: 'content3',
  );
  static ArticleDTO articleDto4 = ArticleDTO(
    source: sourceDto,
    author: 'author4',
    title: 'title4',
    description: 'description4',
    url: 'url4',
    urlToImage: 'urlToImage4',
    publishedAt: 'publishedAt4',
    content: 'content4',
  );
  static ArticleDTO articleDto5 = ArticleDTO(
    source: sourceDto,
    author: 'author5',
    title: 'title5',
    description: 'description5',
    url: 'url5',
    urlToImage: 'urlToImage5',
    publishedAt: 'publishedAt5',
    content: 'content5',
  );

  static SourceDTO sourceDto = SourceDTO(
    id: 'id',
    name: 'name',
    description: 'description',
    url: 'url',
    category: 'category',
    language: 'language',
    country: 'country',
  );

  //isar models
  static Article articleIsar = Article()
    ..source = sourceIsar
    ..author = 'author1'
    ..title = 'title1'
    ..description = 'description1'
    ..url = 'url1'
    ..urlToImage = 'urlToImage1'
    ..publishedAt = 'publishedAt1'
    ..content = 'content1';
  static Source sourceIsar = Source()
    ..id = 'id'
    ..name = 'name';
}
