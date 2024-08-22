import 'package:femispace/core/constants/app_size.dart';
import 'package:femispace/feature/nutritions/view/widgets/nutritions_divider.dart';
import 'package:femispace/feature/nutritions/view/widgets/nutritions_information_area.dart';
import 'package:femispace/feature/nutritions/view/widgets/row_buttons_area.dart';
import 'package:femispace/feature/nutritions/view/widgets/select_date_or_period_button.dart';
import 'package:femispace/feature/nutritions/view/widgets/summary_and_food_details_section_area.dart';
import 'package:femispace/feature/nutritions/view/widgets/summary_boxes_area.dart';
import 'package:femispace/feature/nutritions/view/widgets/summary_list_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class NutritionsView extends StatefulWidget {
  const NutritionsView({super.key});

  @override
  State<NutritionsView> createState() => _NutritionsViewState();
}

class _NutritionsViewState extends State<NutritionsView> {
  @override
  void initState() {
    // Close Native Splash
    FlutterNativeSplash.remove();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _buildBody(),
      ),
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
