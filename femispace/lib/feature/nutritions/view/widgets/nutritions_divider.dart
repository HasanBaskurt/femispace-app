import 'package:femispace/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class NutritionsDivider extends StatelessWidget {
const NutritionsDivider({ super.key });

  @override
  Widget build(BuildContext context){
    
    final AppColors appColors=AppColors(context: context);
    return Divider(height: 3,color: appColors.greyColor,);
  }
}