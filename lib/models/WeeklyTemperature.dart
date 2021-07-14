import 'package:draw_graph/models/feature.dart';
import 'package:flutter/material.dart';

class WeeklyTemperature {
  final String? title;
  final Color? color;
  final List? data;

  WeeklyTemperature(this.title, this.color, this.data);
}

final List<Feature> features = [
  Feature(
    title: "Temperature",
    color: Colors.red,
    data: [0.31, 0.30, 0.30, 0.34, 0.32, 0.33, 0.30],
  )
];
