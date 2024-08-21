import 'package:femispace/core/constants/app_colors.dart';
import 'package:femispace/feature/nutritions/model/box_model.dart';
import 'package:flutter/material.dart';

class AppFakeData {
  final AppColors appColors;
  AppFakeData({required this.appColors});
  late List<BoxModel> fakeBoxDataList = [
    BoxModel(
        name: 'Food quality score',
        iconColor: appColors.firstBoxIconColor,
        boxColor: appColors.firstBoxColor,
        iconData: Icons.restaurant_menu_rounded,
        value: 70,
        percentileValue: 20,
        valueOfHundredActive: true),
    BoxModel(
        name: 'Nutrition personel score',
        iconColor: appColors.secondBoxIconColor,
        boxColor: appColors.secondBoxColor,
        iconData: Icons.restaurant_menu_rounded,
        value: 70,
        percentileValue: 20,
        valueOfHundredActive: true),
         BoxModel(
        name: 'Average GI',
        iconColor: appColors.thirdBoxIconColor,
        boxColor: appColors.thirdBoxColor,
        iconData: Icons.restaurant_menu_rounded,
        value: 10,
        percentileValue: 20,
        valueOfHundredActive: false),
         BoxModel(
        name: 'Average GL',
        iconColor: appColors.fourthBoxIconColor,
        boxColor: appColors.fourthBoxColor,
        iconData: Icons.restaurant_menu_rounded,
        value: 10,
        percentileValue: 20,
        valueOfHundredActive: false),
  ];
}
