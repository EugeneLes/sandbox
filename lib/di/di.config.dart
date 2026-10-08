// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:sandbox/favorites/data/datasource/local_storage.dart' as _i662;
import 'package:sandbox/favorites/data/repo/favorites_repository.dart'
    as _i1048;
import 'package:sandbox/favorites/domain/usecases/load_favorites.dart' as _i330;
import 'package:sandbox/favorites/domain/usecases/remove_article.dart' as _i203;
import 'package:sandbox/favorites/domain/usecases/save_article.dart' as _i828;
import 'package:sandbox/favorites/domain/usecases/watch_favorites.dart'
    as _i662;
import 'package:sandbox/favorites/view/bloc/favorites_bloc.dart' as _i1066;
import 'package:sandbox/news/data/repo/news_repository.dart' as _i163;
import 'package:sandbox/news/domain/usecases/load_news.dart' as _i632;
import 'package:sandbox/news/domain/usecases/load_sources.dart' as _i86;
import 'package:sandbox/news/view/bloc/news_bloc.dart' as _i875;
import 'package:sandbox/news/view/bloc/sources_bloc.dart' as _i177;
import 'package:sandbox/traffic_light/data/repo/sandbox_repository.dart'
    as _i361;
import 'package:sandbox/traffic_light/view/bloc/traffic_light_bloc.dart'
    as _i174;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i174.TrafficLightBloc>(() => _i174.TrafficLightBloc());
    await gh.lazySingletonAsync<_i662.LocalStorage>(
      () {
        final i = _i662.LocalStorage();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    await gh.lazySingletonAsync<_i163.NewsRepository>(
      () {
        final i = _i163.NewsRepository();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    await gh.lazySingletonAsync<_i361.SandBoxRepository>(
      () {
        final i = _i361.SandBoxRepository();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    gh.factory<_i86.LoadSourcesUC>(
        () => _i86.LoadSourcesUC(gh<_i163.NewsRepository>()));
    gh.lazySingleton<_i1048.FavoritesRepository>(
        () => _i1048.FavoritesRepository(gh<_i662.LocalStorage>()));
    gh.factory<_i330.LoadFavoritesUC>(
        () => _i330.LoadFavoritesUC(gh<_i1048.FavoritesRepository>()));
    gh.factory<_i203.RemoveArticleUC>(
        () => _i203.RemoveArticleUC(gh<_i1048.FavoritesRepository>()));
    gh.factory<_i828.SaveArticleUC>(
        () => _i828.SaveArticleUC(gh<_i1048.FavoritesRepository>()));
    gh.factory<_i662.WatchFavoritesUC>(
        () => _i662.WatchFavoritesUC(gh<_i1048.FavoritesRepository>()));
    gh.factory<_i1066.FavoritesBloc>(() => _i1066.FavoritesBloc(
          gh<_i330.LoadFavoritesUC>(),
          gh<_i203.RemoveArticleUC>(),
          gh<_i828.SaveArticleUC>(),
          gh<_i662.WatchFavoritesUC>(),
        ));
    gh.factory<_i632.LoadNewsUC>(() => _i632.LoadNewsUC(
          gh<_i163.NewsRepository>(),
          gh<_i1048.FavoritesRepository>(),
        ));
    gh.factory<_i177.SourcesBloc>(
        () => _i177.SourcesBloc(gh<_i86.LoadSourcesUC>()));
    gh.factory<_i875.NewsBloc>(() => _i875.NewsBloc(
          gh<_i632.LoadNewsUC>(),
          gh<_i662.WatchFavoritesUC>(),
        ));
    return this;
  }
}
