import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hex_conquest/hex_conquest.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sandbox/favorites/domain/usecases/load_favorites.dart';
import 'package:sandbox/favorites/domain/usecases/remove_article.dart';
import 'package:sandbox/favorites/domain/usecases/save_article.dart';
import 'package:sandbox/favorites/domain/usecases/watch_favorites.dart';
import 'package:sandbox/favorites/view/bloc/favorites_bloc.dart';
import 'package:sandbox/home_page.dart';
import 'package:sandbox/news/domain/models/article_model.dart';
import 'package:sandbox/news/domain/models/sources_model.dart';
import 'package:sandbox/news/domain/usecases/load_sources.dart';
import 'package:sandbox/news/view/bloc/sources_bloc.dart';
import 'package:sandbox/shared/di/di.dart';
import 'package:sandbox/traffic_light/view/bloc/traffic_light_bloc.dart';

class _LoadSourcesUCMock extends Mock implements LoadSourcesUC {}

class _LoadFavoritesUCMock extends Mock implements LoadFavoritesUC {}

class _RemoveArticleUCMock extends Mock implements RemoveArticleUC {}

class _SaveArticleUCMock extends Mock implements SaveArticleUC {}

class _WatchFavoritesUCMock extends Mock implements WatchFavoritesUC {}

void main() {
  late _LoadSourcesUCMock loadSources;
  late _LoadFavoritesUCMock loadFavorites;
  late _WatchFavoritesUCMock watchFavorites;

  setUp(() {
    loadSources = _LoadSourcesUCMock();
    loadFavorites = _LoadFavoritesUCMock();
    watchFavorites = _WatchFavoritesUCMock();
    when(() => loadSources.call()).thenAnswer((_) async => SourcesModel(sources: []));
    when(() => loadFavorites.call()).thenAnswer((_) async => <ArticleModel>[]);
    when(() => watchFavorites.call()).thenAnswer((_) => const Stream.empty());
    get.registerFactory(() => TrafficLightBloc());
    get.registerFactory(() => SourcesBloc(loadSources));
  });

  tearDown(() async {
    await get.reset();
  });

  testWidgets('the Conquest tab builds HexConquestFlow', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: BlocProvider(
          create: (_) => FavoritesBloc(
            loadFavorites,
            _RemoveArticleUCMock(),
            _SaveArticleUCMock(),
            watchFavorites,
          ),
          child: const HomePage(),
        ),
      ),
    );
    await tester.pump();

    expect(find.text('Conquest'), findsOneWidget);
    expect(find.text('Traffic Light'), findsOneWidget);
    expect(find.text('News'), findsOneWidget);
    expect(find.text('Favorites'), findsOneWidget);

    await tester.tap(find.text('Conquest'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 400));

    expect(find.byType(HexConquestFlow), findsOneWidget);
    expect(find.text('Start new game'), findsOneWidget);

    await tester.pumpWidget(const SizedBox());
  });
}
