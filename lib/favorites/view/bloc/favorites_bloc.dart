import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sandbox/favorites/domain/models/extensions.dart';
import 'package:sandbox/favorites/domain/usecases/load_favorites.dart';
import 'package:sandbox/favorites/domain/usecases/remove_article.dart';
import 'package:sandbox/favorites/domain/usecases/save_article.dart';
import 'package:sandbox/favorites/domain/usecases/watch_favorites.dart';
import 'package:sandbox/news/domain/models/article_model.dart';
import 'package:sandbox/news/domain/models/source_model.dart';
import 'package:sandbox/news/view/model/news_article_view_model.dart';
import 'package:sandbox/news/view/model/source_view_model.dart';

part 'favorites_bloc.freezed.dart';
part 'favorites_event.dart';
part 'favorites_state.dart';

@Injectable()
class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  final LoadFavoritesUC _loadFavoritesUC;
  final RemoveArticleUC _removeArticleUC;
  final SaveArticleUC _saveArticleUC;
  final WatchFavoritesUC _watchFavoritesUC;

  StreamSubscription? favStream;

  FavoritesBloc(
    this._loadFavoritesUC,
    this._removeArticleUC,
    this._saveArticleUC,
    this._watchFavoritesUC,
  ) : super(
          const FavoritesState.initial(),
        ) {
    on<_FavoritesLoadEvent>((event, emit) => _loadFavorites(event, emit));
    on<_FavoriteEvent>((event, emit) => _addArticle(event, emit));
    on<_UnfavoriteEvent>((event, emit) => _removeArticle(event, emit));
  }

  void init() {
    add(const FavoritesEvent.load());
    favStream?.cancel();
    favStream = _watchFavoritesUC.call().listen((event) {
      add(const FavoritesEvent.load());
    });
  }

  @override
  Future<void> close() {
    favStream?.cancel();
    return super.close();
  }

  void _loadFavorites(_FavoritesLoadEvent event, Emitter emit) async {
    final result = await _loadFavoritesUC.call();
    emit(
      FavoritesState.loaded(
        result.map((e) => e.toViewModel()).toList(),
      ),
    );
  }

  void _addArticle(_FavoriteEvent event, Emitter emit) {
    _saveArticleUC.call(event.article.toModel());
  }

  void _removeArticle(_UnfavoriteEvent event, Emitter emit) async {
    final id = event.article.id;
    if (id != null) {
      final res = await _removeArticleUC.call(id);
      if (res) add(const FavoritesEvent.load());
    } else {
      print('!!! Warning, trying to remove article without id, art: ${event.article}');
    }
  }
}

extension SourceViewModelX on SourceViewModel {
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

extension NewsArticleViewModelX on NewsArticleViewModel {
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
      );
}
