import 'package:animate_do/animate_do.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:femispace/core/constants/app_colors.dart';
import 'package:femispace/core/constants/app_providers.dart';
import 'package:femispace/core/constants/app_size.dart';
import 'package:femispace/core/constants/app_text_font_weight.dart';
import 'package:femispace/feature/nutritions/view_model.dart/nutritions_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryAndFoodDetailsSectionArea extends ConsumerWidget {
  const SummaryAndFoodDetailsSectionArea({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppColors appColors = AppColors(context: context);

    final providerWatch = ref.watch(AppProviders.nutritionsViewModelProvider);
    final providerRead = ref.read(AppProviders.nutritionsViewModelProvider);
    return FadeInUp(
      duration: const Duration(milliseconds: 500),
      delay: const Duration(milliseconds: 1950),
      child: Container(
        padding: EdgeInsets.all(AppSize.getScreenRadiusRatio(radius: 8)),
        width: double.infinity,
        height: AppSize.getScreenHeightRatio(height: 60),
        decoration: BoxDecoration(
          color: appColors.passiveGreyColor,
          borderRadius:
              BorderRadius.circular(AppSize.getScreenRadiusRatio(radius: 16)),
        ),
        child: Row(
          children: [
            Expanded(
                child: Visibility(
                    visible: providerWatch.summaryButtonActive,
                    replacement:
                        _createText(name: 'Summary', appColors: appColors, value: true, providerRead: providerRead),
                    child: _createCard(name: 'Summary', appColors: appColors, ))),
            SizedBox(
              width: AppSize.getScreenRadiusRatio(radius: 8),
            ),
            Expanded(
                child: Visibility(
                    visible: !providerWatch.summaryButtonActive,
                    replacement:
                        _createText(name: 'Food details', appColors: appColors, value: false, providerRead: providerRead),
                    child:
                        _createCard(name: 'Food details', appColors: appColors,))),
          ],
        ),
      ),
    );
  }

  Widget _createText(
      {required String name, required AppColors appColors,required bool value,required NutritionsViewModel providerRead}) {
    return GestureDetector(
        onTap: () =>
                  providerRead.changeSummaryButtonActive(newValue: value),
      child: AutoSizeText(
          minFontSize: 16,
          maxFontSize: 20,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          name,
          style: GoogleFonts.roboto(
              height: 0,
              color: appColors.darkGreyColor,
              fontSize: 18,
              fontWeight: AppTextFontWeight.REGULAR)),
    );
  }

  Widget _createCard({required String name, required AppColors appColors}) {
    return Card(
      margin: EdgeInsets.zero,
      color: appColors.whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(AppSize.getScreenRadiusRatio(radius: 8)),
      ),
      child: Center(
        child: AutoSizeText(
            minFontSize: 16,
            maxFontSize: 20,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            name,
            style: GoogleFonts.roboto(
                height: 0,
                color: appColors.blackColor,
                fontSize: 18,
                fontWeight: AppTextFontWeight.REGULAR)),
      ),
    );
  }
}
