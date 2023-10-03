import 'package:flutter/material.dart';
import 'package:sandbox/traffic_light/domain/models/traffic_light_section_model.dart';

abstract class ColorMapper {
  static Color getColor(LightColor color) {
    switch (color) {
      case LightColor.red:
        return Colors.red;
      case LightColor.yellow:
        return Colors.yellow;
      case LightColor.green:
        return Colors.green;
    }
  }
}
