import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sandbox/favorites/domain/models/extensions.dart';
import 'package:sandbox/favorites/domain/usecases/watch_favorites.dart';
import 'package:sandbox/news/domain/models/news_model.dart';
import 'package:sandbox/news/domain/usecases/load_news.dart';
import 'package:sandbox/news/view/model/news_view_model.dart';

part 'news_bloc.freezed.dart';
part 'news_event.dart';
part 'news_state.dart';

@Injectable()
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final LoadNewsUC _loadNewsUC;
  final WatchFavoritesUC _watchFavoritesUC;

  StreamSubscription? favStream;
  StreamSubscription? refreshSubscr;

  NewsBloc(
    this._loadNewsUC,
    this._watchFavoritesUC,
  ) : super(
          const NewsState.initial(),
        ) {
    on<_NewsLoadEvent>((event, emit) => _loadNews(event, emit));
  }

  void init(String source) {
    add(NewsEvent.load(source));
    favStream?.cancel();
    favStream = _watchFavoritesUC.call().listen((event) {
      add(NewsEvent.load(source, skipLoader: true));
    });
    refreshSubscr?.cancel();
    refreshSubscr = Stream.periodic(
      const Duration(minutes: 1),
    ).listen((event) {
      add(NewsEvent.load(source));
    });
  }

  @override
  Future<void> close() {
    refreshSubscr?.cancel();
    favStream?.cancel();
    return super.close();
  }

  _loadNews(_NewsLoadEvent event, Emitter emit) async {
    if (!event.skipLoader) emit(const NewsState.loading());
    final result = await _loadNewsUC.call(event.source);
    emit(
      NewsState.loaded(
        result.toViewModel(),
      ),
    );
  }
}

extension NewsModelX on NewsModel {
  NewsViewModel toViewModel() => NewsViewModel(articles.map((e) => e.toViewModel()).toList());
}
