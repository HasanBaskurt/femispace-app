import 'package:flutter/material.dart';

class InformationBoxModel {
  String name;
  IconData iconData;
  Color boxColor;
  Color iconColor;
  int percentileValue;
  int value;
  bool valueOfHundredActive;
  InformationBoxModel({
    required this.name,
    required this.iconColor,
    required this.boxColor,
    required this.iconData,
    required this.value,
    required this.percentileValue,
     this.valueOfHundredActive=false,

  });

}