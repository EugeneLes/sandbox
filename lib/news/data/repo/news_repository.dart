import 'package:injectable/injectable.dart';
import 'package:sandbox/news/data/datasource/news_api.dart';
import 'package:sandbox/news/data/models/article_dto.dart';
import 'package:sandbox/news/data/models/source_dto.dart';
import 'package:sandbox/news/data/models/sources_dto.dart';
import 'package:sandbox/news/data/models/top_headlines_dto.dart';
import 'package:sandbox/news/domain/models/article_model.dart';
import 'package:sandbox/news/domain/models/source_model.dart';

@LazySingleton()
class NewsRepository {
  late final NewsApi newsApi;

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    newsApi = NewsApi.create();
  }

  Future<void> getNews() async {
    await newsApi.getEverything();
  }

  Future<TopHeadlinesDTO> getTopHeadlines({
    String? sources,
    int? pageSize,
    int? page,
  }) async {
    final result = await newsApi.getTopHeadlines(
      sources: sources,
      pageSize: pageSize,
      page: page,
    );
    final topHeadlines = TopHeadlinesDTO.fromJson(result.body);
    return topHeadlines;
  }

  Future<SourcesDTO> getSources() async {
    final result = await newsApi.getSources();

    final sources = SourcesDTO.fromJson(result.body);
    return sources;
  }
}

extension SourceX on SourceDTO {
  SourceModel toModel() => SourceModel(
        id: id,
        name: name,
        description: description,
        url: url,
        category: category,
        language: language,
        country: country,
      );
}

extension ArticleDtoX on ArticleDTO {
  ArticleModel toModel({int? id, bool? isFavorite}) => ArticleModel(
      id: id,
      source: source.toModel(),
      author: author,
      title: title,
      description: description,
      url: url,
      urlToImage: urlToImage,
      publishedAt: publishedAt,
      content: content,
      isFavorite: isFavorite ?? false);
}
