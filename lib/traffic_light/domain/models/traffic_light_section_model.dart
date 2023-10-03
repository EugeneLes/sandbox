class TrafficLightSectionModel {
  final LightColor color;
  final LightShape shape;
  final bool isActive;

  TrafficLightSectionModel({
    required this.color,
    this.shape = LightShape.round,
    this.isActive = false,
  });
}

enum LightColor { red, yellow, green }

enum LightShape { round, arrowRight, arrowLeft }
