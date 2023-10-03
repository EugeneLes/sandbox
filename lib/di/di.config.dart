// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:sandbox/favorites/data/datasource/local_storage.dart' as _i3;
import 'package:sandbox/favorites/data/repo/favorites_repository.dart' as _i7;
import 'package:sandbox/favorites/domain/usecases/load_favorites.dart' as _i8;
import 'package:sandbox/favorites/domain/usecases/remove_article.dart' as _i11;
import 'package:sandbox/favorites/domain/usecases/save_article.dart' as _i12;
import 'package:sandbox/favorites/domain/usecases/watch_favorites.dart' as _i14;
import 'package:sandbox/favorites/view/bloc/favorites_bloc.dart' as _i15;
import 'package:sandbox/news/data/repo/news_repository.dart' as _i4;
import 'package:sandbox/news/domain/usecases/load_news.dart' as _i9;
import 'package:sandbox/news/domain/usecases/load_sources.dart' as _i10;
import 'package:sandbox/news/view/bloc/news_bloc.dart' as _i16;
import 'package:sandbox/news/view/bloc/sources_bloc.dart' as _i13;
import 'package:sandbox/traffic_light/data/repo/sandbox_repository.dart' as _i5;
import 'package:sandbox/traffic_light/view/bloc/traffic_light_bloc.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await gh.lazySingletonAsync<_i3.LocalStorage>(
      () {
        final i = _i3.LocalStorage();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    await gh.lazySingletonAsync<_i4.NewsRepository>(
      () {
        final i = _i4.NewsRepository();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    await gh.lazySingletonAsync<_i5.SandBoxRepository>(
      () {
        final i = _i5.SandBoxRepository();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    gh.factory<_i6.TrafficLightBloc>(() => _i6.TrafficLightBloc());
    gh.lazySingleton<_i7.FavoritesRepository>(
        () => _i7.FavoritesRepository(gh<_i3.LocalStorage>()));
    gh.factory<_i8.LoadFavoritesUC>(
        () => _i8.LoadFavoritesUC(gh<_i7.FavoritesRepository>()));
    gh.factory<_i9.LoadNewsUC>(() => _i9.LoadNewsUC(
          gh<_i4.NewsRepository>(),
          gh<_i7.FavoritesRepository>(),
        ));
    gh.factory<_i10.LoadSourcesUC>(
        () => _i10.LoadSourcesUC(gh<_i4.NewsRepository>()));
    gh.factory<_i11.RemoveArticleUC>(
        () => _i11.RemoveArticleUC(gh<_i7.FavoritesRepository>()));
    gh.factory<_i12.SaveArticleUC>(
        () => _i12.SaveArticleUC(gh<_i7.FavoritesRepository>()));
    gh.factory<_i13.SourcesBloc>(
        () => _i13.SourcesBloc(gh<_i10.LoadSourcesUC>()));
    gh.factory<_i14.WatchFavoritesUC>(
        () => _i14.WatchFavoritesUC(gh<_i7.FavoritesRepository>()));
    gh.factory<_i15.FavoritesBloc>(() => _i15.FavoritesBloc(
          gh<_i8.LoadFavoritesUC>(),
          gh<_i11.RemoveArticleUC>(),
          gh<_i12.SaveArticleUC>(),
          gh<_i14.WatchFavoritesUC>(),
        ));
    gh.factory<_i16.NewsBloc>(() => _i16.NewsBloc(
          gh<_i9.LoadNewsUC>(),
          gh<_i14.WatchFavoritesUC>(),
        ));
    return this;
  }
}
