
import 'package:flutter/material.dart';

class SummaryBoxModel {
  String name;
  int percentileValue;
  int kcalValue;
  bool positiveValue;
  Color boxColor;
  Color progressColor;
  SummaryBoxModel({
    required this.name,
    required this.percentileValue,
    required this.kcalValue,
    required this.positiveValue,
    required this.boxColor,
    required this.progressColor,
  });
}
