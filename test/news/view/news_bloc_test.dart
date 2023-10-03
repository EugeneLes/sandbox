import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sandbox/favorites/domain/usecases/watch_favorites.dart';
import 'package:sandbox/news/domain/usecases/load_news.dart';
import 'package:sandbox/news/view/bloc/news_bloc.dart';

import '../../models/default_models.dart';

void main() {
  group('NewsBlocTest simple', () {
    late NewsBloc bloc;

    late LoadNewsUC loadNewsUC;
    late WatchFavoritesUC watchFavoritesUC;

    setUp(() {
      loadNewsUC = LoadNewsUCMock();
      watchFavoritesUC = WatchFavoritesUCMock();
      when(
        () => loadNewsUC.call(any()),
      ).thenAnswer(
        (_) => Future.value(DefaultModels.newsModel),
      );
      when(
        () => watchFavoritesUC.call(),
      ).thenAnswer(
        (_) => const Stream.empty(),
      );

      bloc = NewsBloc(
        loadNewsUC,
        watchFavoritesUC,
      );
    });

    tearDown(() {
      bloc.close();
    });

    test('Initial state is NewsInitialState', () {
      expect(bloc.state, isA<NewsInitialState>());
    });

    blocTest<NewsBloc, NewsState>('Bloc initialized',
        build: () {
          return bloc;
        },
        act: (bloc) => bloc.init('source'),
        expect: () => [
              isA<NewsLoadingState>(),
              isA<NewsLoadedState>(),
            ],
        verify: (_) {
          verify(() => watchFavoritesUC.call()).called(1);
        });
  });

  group('NewsBlocTest', () {
    late NewsBloc bloc;

    late LoadNewsUC loadNewsUC;
    late WatchFavoritesUC watchFavoritesUC;

    setUp(() {
      loadNewsUC = LoadNewsUCMock();
      watchFavoritesUC = WatchFavoritesUCMock();
      when(
        () => loadNewsUC.call(any()),
      ).thenAnswer(
        (_) => Future.value(DefaultModels.newsModel),
      );
      when(
        () => watchFavoritesUC.call(),
      ).thenAnswer(
        (_) => Stream.value(DefaultModels.newsModel.articles),
      );

      bloc = NewsBloc(
        loadNewsUC,
        watchFavoritesUC,
      );
    });

    tearDown(() {
      bloc.close();
    });

    test('Initial state is NewsInitialState', () {
      expect(bloc.state, isA<NewsInitialState>());
    });

    blocTest<NewsBloc, NewsState>('Bloc initialized',
        build: () {
          return bloc;
        },
        act: (bloc) => bloc.init('source'),
        expect: () => [
              isA<NewsLoadingState>(),
              isA<NewsLoadedState>(),
              isA<NewsLoadedState>(),
            ],
        verify: (_) {
          verify(() => watchFavoritesUC.call()).called(1);
        });
  });
}

class WatchFavoritesUCMock extends Mock implements WatchFavoritesUC {}

class LoadNewsUCMock extends Mock implements LoadNewsUC {}
