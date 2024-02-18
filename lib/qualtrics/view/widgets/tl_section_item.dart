import 'package:flutter/material.dart';
import 'package:sandbox/traffic_light/view/model/traffic_light_section_view_model.dart';
import 'package:sandbox/traffic_light/view/widgets/color_mapper.dart';

class TLSectionItem extends StatelessWidget {
  const TLSectionItem({super.key, required this.model});
  final TrafficLightSectionViewModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: ColorMapper.getColor(model.color),
      ),
    );
  }
}
