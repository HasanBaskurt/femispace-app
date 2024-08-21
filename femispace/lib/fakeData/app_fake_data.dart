import 'package:femispace/core/constants/app_colors.dart';
import 'package:femispace/feature/nutritions/model/box_model.dart';
import 'package:femispace/feature/nutritions/model/row_button_model.dart';
import 'package:flutter/material.dart';

class AppFakeData {
  static List<RowButtonModel> rowButtonList = [
    RowButtonModel(id: 1, name: 'Nutrition dashboard', buttonFunction: () {}),
    RowButtonModel(id: 2, name: 'Nutrition analysis', buttonFunction: () {}),
    RowButtonModel(id: 3, name: 'Food quality analysis', buttonFunction: () {}),
    RowButtonModel(id: 4, name: 'Favorite food', buttonFunction: () {}),
    RowButtonModel(id: 5, name: 'Favorite recipes', buttonFunction: () {}),
  ];

  static List<BoxModel> getBoxModelList({required AppColors appColors}) {
    List<BoxModel> fakeBoxDataList = [
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
    return fakeBoxDataList;
  }
}
