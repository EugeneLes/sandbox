part of 'traffic_light_bloc.dart';

@freezed
class TrafficLightEvent with _$TrafficLightEvent {
  const factory TrafficLightEvent.favorite(String articleId) = _TrafficLightFavoriteEvent;

  const factory TrafficLightEvent.load() = _TrafficLightLoadEvent;
}
