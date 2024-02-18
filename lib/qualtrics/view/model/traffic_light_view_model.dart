import 'package:sandbox/traffic_light/view/model/traffic_light_section_view_model.dart';

class TrafficLightViewModel {
  final List<TrafficLightSectionViewModel> sections;

  TrafficLightViewModel({
    required this.sections,
  });

  @override
  String toString() {
    return 'TrafficLightViewModel(sections: [${sections.map((e) => e.toString()).join(', ')}])';
  }
}
