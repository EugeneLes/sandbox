import 'package:flutter/material.dart';
import 'package:sandbox/traffic_light/view/model/traffic_light_view_model.dart';
import 'package:sandbox/traffic_light/view/widgets/tl_section_item.dart';

class TrafficLightContent extends StatelessWidget {
  final TrafficLightViewModel model;
  const TrafficLightContent({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TLSectionItem(model: model.sections[index]);
      },
      itemCount: model.sections.length,
    );
  }
}
