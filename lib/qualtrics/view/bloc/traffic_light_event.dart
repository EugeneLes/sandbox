part of 'traffic_light_bloc.dart';

@freezed
class TrafficLightEvent with _$TrafficLightEvent {
  const factory TrafficLightEvent.start(String articleId) = _TrafficLightStartEvent;
  const factory TrafficLightEvent.stop(String articleId) = _TrafficLightStopEvent;

  const factory TrafficLightEvent.load() = _TrafficLightLoadEvent;
}
