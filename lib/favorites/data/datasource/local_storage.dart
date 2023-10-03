import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../models/article.dart';

@LazySingleton()
class LocalStorage {
  late final Isar isar;

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      isar = await Isar.open(
        [ArticleSchema],
        directory: dir.path,
      );
    }
  }

  Future<int?> isFavorite(String url) async {
    final result = await isar.articles.where().urlEqualTo(url).findFirst();
    return result?.id;
  }

  Future<List<Article>> getFavorites() {
    return isar.articles.where().findAll();
  }

  Future<int> saveArticle(Article article) {
    return isar.writeTxn<int>(
      () => isar.articles.put(article),
    );
  }

  Future<bool> deleteArticle(int id) {
    return isar.writeTxn<bool>(
      () => isar.articles.delete(id),
    );
  }

  Stream<List<Article>> listenToFavorites() async* {
    yield* isar.articles.where().watch();
  }

  Future<void> clear() {
    return isar.writeTxn(
      () => isar.clear(),
    );
  }
}
