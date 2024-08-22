
import 'package:femispace/core/constants/app_size.dart';
import 'package:femispace/feature/nutritions/view/widgets/nutritions_divider.dart';
import 'package:femispace/feature/nutritions/view/widgets/nutritions_information_area.dart';
import 'package:femispace/feature/nutritions/view/widgets/row_buttons_area.dart';
import 'package:femispace/feature/nutritions/view/widgets/select_date_or_period_button.dart';
import 'package:femispace/feature/nutritions/view/widgets/summary_and_food_details_section_area.dart';
import 'package:femispace/feature/nutritions/view/widgets/summary_boxes_area.dart';
import 'package:femispace/feature/nutritions/view/widgets/summary_list_area.dart';
import 'package:flutter/material.dart';

class NutritionsView extends StatelessWidget {
  const NutritionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView(
      children: [
        const NutritionsInformationArea(),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSize.getScreenHeightRatio(height: 16),
          ),
          child: Column(
            children: [
              SizedBox(
                height: AppSize.getScreenHeightRatio(height: 16),
              ),
              const SelectionDateOrPeriodButton(),
              SizedBox(
                height: AppSize.getScreenHeightRatio(height: 20),
              ),
              const RowButtonsArea(),
              SizedBox(
                height: AppSize.getScreenHeightRatio(height: 16),
              ),
              const SummaryAndFoodDetailsSectionArea(),
              SizedBox(
                height: AppSize.getScreenHeightRatio(height: 16),
              ),
            ],
          ),
        ),
        const NutritionsDivider(),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSize.getScreenHeightRatio(height: 16),
          ),
          child: Column(
            children: [
              SizedBox(
                height: AppSize.getScreenHeightRatio(height: 16),
              ),
              const SummaryBoxesArea(),
              SizedBox(
                height: AppSize.getScreenHeightRatio(height: 16),
              ),
              const SummaryListArea()
            ],
          ),
        ),
        SizedBox(
          height: AppSize.getScreenHeightRatio(height: 80),
        ),
      ],
    );
  }
}
