import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sandbox/favorites/data/repo/favorites_repository.dart';
import 'package:sandbox/news/data/repo/news_repository.dart';
import 'package:sandbox/news/domain/usecases/load_news.dart';

import '../../models/default_dto_models.dart';

void main() {
  group('NewsBlocTest simple', () {
    late LoadNewsUC loadNewsUC;

    late NewsRepository newsRepository;
    late FavoritesRepository favoritesRepository;

    setUp(() {
      newsRepository = NewsRepositoryMock();
      favoritesRepository = FavoritesRepositoryMock();
      when(
        () => newsRepository.getTopHeadlines(sources: any(named: 'sources')),
      ).thenAnswer(
        (_) => Future.value(DefaultDtoModels.topHeadlinesDto),
      );
      when(
        () => favoritesRepository.isFavorite(any()),
      ).thenAnswer(
        (_) => Future.value(null),
      );
      when(
        () => favoritesRepository.isFavorite('url2'),
      ).thenAnswer(
        (_) => Future.value(2),
      );

      loadNewsUC = LoadNewsUC(
        newsRepository,
        favoritesRepository,
      );
    });

    test('Initial state is NewsInitialState', () async {
      final result = await loadNewsUC.call('source');

      expect(result.articles.length, 5);
      expect(result.articles[0].id, null);
      expect(result.articles[0].isFavorite, false);
      expect(result.articles[1].id, 2);
      expect(result.articles[1].isFavorite, true);
      expect(result.articles[2].id, null);
      expect(result.articles[2].isFavorite, false);
      expect(result.articles[3].id, null);
      expect(result.articles[3].isFavorite, false);
      expect(result.articles[4].id, null);
      expect(result.articles[4].isFavorite, false);
    });
  });
}

class NewsRepositoryMock extends Mock implements NewsRepository {}

class FavoritesRepositoryMock extends Mock implements FavoritesRepository {}
