import 'package:sandbox/traffic_light/domain/models/traffic_light_section_model.dart';

class TrafficLightSectionViewModel {
  final LightColor color;
  final LightShape shape;
  final bool isActive;

  TrafficLightSectionViewModel({
    required this.color,
    this.shape = LightShape.round,
    this.isActive = false,
  });
}
