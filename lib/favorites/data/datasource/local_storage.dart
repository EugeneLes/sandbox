import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import '../models/article.dart';

/// Stores favorite articles as a JSON file in the app documents directory.
@LazySingleton()
class LocalStorage {
  final _changes = StreamController<List<Article>>.broadcast();
  late final File _file;
  List<Article> _articles = [];
  int _lastId = 0;
  bool _initialized = false;

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    if (_initialized) return;
    final dir = await getApplicationDocumentsDirectory();
    _file = File('${dir.path}/favorites.json');
    if (await _file.exists()) {
      final json = jsonDecode(await _file.readAsString()) as List<dynamic>;
      _articles = json.map((e) => Article.fromJson(e as Map<String, dynamic>)).toList();
      _lastId = _articles.fold(0, (max, a) => a.id > max ? a.id : max);
    }
    _initialized = true;
  }

  Future<int?> isFavorite(String url) async {
    for (final article in _articles) {
      if (article.url == url) return article.id;
    }
    return null;
  }

  Future<List<Article>> getFavorites() async => List.of(_articles);

  Future<int> saveArticle(Article article) async {
    if (article.id == 0) article.id = ++_lastId;
    final index = _articles.indexWhere((a) => a.id == article.id);
    if (index == -1) {
      _articles.add(article);
    } else {
      _articles[index] = article;
    }
    await _persist();
    return article.id;
  }

  Future<bool> deleteArticle(int id) async {
    final before = _articles.length;
    _articles.removeWhere((a) => a.id == id);
    final removed = _articles.length != before;
    if (removed) await _persist();
    return removed;
  }

  Stream<List<Article>> listenToFavorites() => _changes.stream;

  Future<void> clear() async {
    _articles = [];
    await _persist();
  }

  Future<void> _persist() async {
    await _file.writeAsString(jsonEncode(_articles.map((a) => a.toJson()).toList()));
    _changes.add(List.of(_articles));
  }
}
