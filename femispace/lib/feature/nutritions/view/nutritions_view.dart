import 'package:femispace/core/constants/app_colors.dart';
import 'package:femispace/core/constants/app_size.dart';
import 'package:femispace/feature/nutritions/view/widgets/nutritions_divider.dart';
import 'package:femispace/feature/nutritions/view/widgets/nutritions_information_area.dart';
import 'package:femispace/feature/nutritions/view/widgets/row_buttons_area.dart';
import 'package:femispace/feature/nutritions/view/widgets/select_date_or_period_button.dart';
import 'package:flutter/material.dart';

class NutritionsView extends StatelessWidget {
  const NutritionsView({super.key});

  @override
  Widget build(BuildContext context) {
    final AppColors appColors=AppColors(context: context);
    return Scaffold(
      backgroundColor: appColors.whiteColor,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView(
      children:  [
       const  NutritionsInformationArea(),
       Padding(
   
      padding:  EdgeInsets.all(AppSize.getScreenHeightRatio(height: 16),),
         child:  Column(
           children: [
              const SelectionDateOrPeriodButton(),
               SizedBox(height: AppSize.getScreenHeightRatio(height: 20),),
             const  RowButtonsArea(),
               
           ],
         ),
       ),
       const NutritionsDivider()
      ],
    );
  }
}
