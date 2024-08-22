import 'package:animate_do/animate_do.dart';
import 'package:femispace/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class NutritionsDivider extends StatelessWidget {
  const NutritionsDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final AppColors appColors = AppColors(context: context);
    return 
  FadeInUp(    duration:const Duration(milliseconds: 500), 
        delay:const  Duration(milliseconds: 1950),
        child: Divider(
          height: 3,
          color: appColors.greyColor,
        ));
  }
}
