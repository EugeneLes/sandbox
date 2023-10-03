
part of 'favorites_bloc.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState.initial() = _FavoritesInitialState;
  const factory FavoritesState.loading() = _FavoritesLoadingState;

  const factory FavoritesState.loaded(List<NewsArticleViewModel> articles) = _FavoritesLoadedState;
}
