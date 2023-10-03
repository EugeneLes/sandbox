part of 'sources_bloc.dart';

@freezed
class SourcesEvent with _$SourcesEvent {
  const factory SourcesEvent.favorite(String articleId) = _SourcesFavoriteEvent;

  const factory SourcesEvent.load() = _SourcesLoadEvent;
}
