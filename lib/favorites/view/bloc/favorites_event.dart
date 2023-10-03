part of 'favorites_bloc.dart';

@freezed
class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.favorite(NewsArticleViewModel article) = _FavoriteEvent;
  const factory FavoritesEvent.unfavorite(NewsArticleViewModel article) = _UnfavoriteEvent;

  const factory FavoritesEvent.load() = _FavoritesLoadEvent;
}
