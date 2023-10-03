import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sandbox/traffic_light/domain/models/traffic_light_model.dart';
import 'package:sandbox/traffic_light/domain/models/traffic_light_section_model.dart';
import 'package:sandbox/traffic_light/view/model/traffic_light_section_view_model.dart';
import 'package:sandbox/traffic_light/view/model/traffic_light_view_model.dart';

part 'traffic_light_bloc.freezed.dart';
part 'traffic_light_event.dart';
part 'traffic_light_state.dart';

@Injectable()
class TrafficLightBloc extends Bloc<TrafficLightEvent, TrafficLightState> {
  TrafficLightBloc()
      : super(
          const TrafficLightState.initial(),
        ) {
    on<_TrafficLightLoadEvent>((_, emit) => _loadTrafficLight(emit));
    on<_TrafficLightFavoriteEvent>((event, emit) => _markArticle(event, emit));
  }

  init() {
    add(const TrafficLightEvent.load());
  }

  _loadTrafficLight(Emitter emit) async {
    emit(const TrafficLightState.loading());
    final result = await Future(
      () => TrafficLightModel(
        sections: [
          TrafficLightSectionModel(color: LightColor.red),
          TrafficLightSectionModel(color: LightColor.yellow),
          TrafficLightSectionModel(color: LightColor.green),
        ],
      ),
    );
    emit(
      TrafficLightState.loaded(result.toViewModel()),
    );
  }

  _markArticle(_TrafficLightFavoriteEvent event, Emitter emit) {}
}

extension TrafficLightX on TrafficLightModel {
  TrafficLightViewModel toViewModel() =>
      TrafficLightViewModel(sections: sections.map((e) => e.toViewModel()).toList());
}

extension TrafficLightSectionX on TrafficLightSectionModel {
  TrafficLightSectionViewModel toViewModel() => TrafficLightSectionViewModel(
        color: color,
        shape: shape,
        isActive: isActive,
      );
}
