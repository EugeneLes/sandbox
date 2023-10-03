import 'package:injectable/injectable.dart';
import 'package:sandbox/favorites/data/datasource/local_storage.dart';
import 'package:sandbox/favorites/data/models/article.dart';
import 'package:sandbox/news/data/models/source_dto.dart';
import 'package:sandbox/news/domain/models/article_model.dart';
import 'package:sandbox/news/domain/models/source_model.dart';

@LazySingleton()
class FavoritesRepository {
  final LocalStorage storage;

  FavoritesRepository(this.storage);

  Future<List<ArticleModel>> getFavorites() async {
    final result = await storage.getFavorites();
    return result.map((e) => e.toModel()).toList();
  }

  Future<int> saveArticle(Article article) {
    return storage.saveArticle(article);
  }

  Future<bool> removeArticle(int id) {
    return storage.deleteArticle(id);
  }

  Future<int?> isFavorite(String url) {
    return storage.isFavorite(url);
  }

  Stream<List<Article>> watchFavorites() {
    return storage.listenToFavorites();
  }
}

extension SourceDtoX on SourceDTO {
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

extension ArticleX on Article {
  ArticleModel toModel() => ArticleModel(
        id: id,
        source: source.toModel(),
        author: author,
        title: title,
        description: description,
        url: url,
        urlToImage: urlToImage,
        publishedAt: publishedAt,
        content: content,
        isFavorite: true,
      );
}

extension SourceX on Source {
  SourceModel toModel() => SourceModel(
        id: id,
        name: name,
      );
}

extension SourceModelX on SourceModel {
  Source toIsarModel() => Source()
    ..id = id
    ..name = name;
}
