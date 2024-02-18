part of 'traffic_light_bloc.dart';

@freezed
class TrafficLightState with _$TrafficLightState {
  const factory TrafficLightState.initial() = _TrafficLightInitialState;
  const factory TrafficLightState.loading() = _TrafficLightLoadingState;

  const factory TrafficLightState.loaded(TrafficLightViewModel viewModel) =
      _TrafficLightLoadedState;
}
