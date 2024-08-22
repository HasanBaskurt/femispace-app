import 'package:femispace/core/constants/app_colors.dart';
import 'package:femispace/feature/nutritions/model/box_model.dart';
import 'package:femispace/feature/nutritions/model/row_button_model.dart';
import 'package:femispace/feature/nutritions/model/summary_box_model.dart';
import 'package:femispace/feature/nutritions/model/summary_list_model.dart';
import 'package:flutter/material.dart';

class AppFakeData {
  static List<RowButtonModel> rowButtonList = [
    RowButtonModel(id: 1, name: 'Nutrition dashboard', buttonFunction: () {}),
    RowButtonModel(id: 2, name: 'Nutrition analysis', buttonFunction: () {}),
    RowButtonModel(id: 3, name: 'Food quality analysis', buttonFunction: () {}),
    RowButtonModel(id: 4, name: 'Favorite food', buttonFunction: () {}),
    RowButtonModel(id: 5, name: 'Favorite recipes', buttonFunction: () {}),
  ];

  static List<SummaryListModel> summaryListModelList = [
    SummaryListModel(
        name: 'Fast food & ready to made',
        percentileValue: 50,
        positiveValue: true,
        kcalValue: 1000),
    SummaryListModel(
        name: 'Home-cooked',
        percentileValue: 30,
        positiveValue: true,
        kcalValue: 1000),
    SummaryListModel(
        name: 'Fine dining',
        percentileValue: 20,
        positiveValue: true,
        kcalValue: 400),
    SummaryListModel(
        name: 'Whole plant-based food',
        percentileValue: 10,
        positiveValue: true,
        kcalValue: 200),
    SummaryListModel(
        name: 'Organic food', percentileValue: 0, positiveValue: false),
  ];
  
  static List<SummaryBoxModel> getSummaryBoxModelList(
      {required AppColors appColors}) {
    List<SummaryBoxModel> fakeSummaryBoxModelList = [
      SummaryBoxModel(
          name: 'Raw food',
          percentileValue: 20,
          kcalValue: 400,
          positiveValue: true,
          boxColor: appColors.summaryBoxColor1,
          progressColor: appColors.blueColor),
      SummaryBoxModel(
          name: 'Minimally processed food',
          percentileValue: 30,
          kcalValue: 600,
          positiveValue: true,
          boxColor: appColors.summaryBoxColor2,
          progressColor: appColors.orangeColor),
      SummaryBoxModel(
          name: 'Highly processed food',
          percentileValue: 50,
          kcalValue: 1000,
          positiveValue: false,
          boxColor: appColors.summaryBoxColor3,
          progressColor: appColors.darkRedColor),
    ];
    return fakeSummaryBoxModelList;
  }

  static List<BoxModel> getBoxModelList({required AppColors appColors}) {
    List<BoxModel> fakeBoxModelList = [
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
    return fakeBoxModelList;
  }
}
