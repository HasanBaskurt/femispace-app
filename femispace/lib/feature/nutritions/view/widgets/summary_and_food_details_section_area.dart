import 'package:animate_do/animate_do.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:femispace/core/constants/app_colors.dart';
import 'package:femispace/core/constants/app_size.dart';
import 'package:femispace/core/constants/app_text_font_weight.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryAndFoodDetailsSectionArea extends StatelessWidget {
  const SummaryAndFoodDetailsSectionArea({super.key});

  @override
  Widget build(BuildContext context) {
    final AppColors appColors = AppColors(context: context);
    return  
  FadeInUp(    duration:const Duration(milliseconds: 500), 
      delay:const  Duration(milliseconds: 1950),
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
                child: Card(
              margin: EdgeInsets.zero,
              color: appColors.whiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    AppSize.getScreenRadiusRatio(radius: 8)),
              ),
              child: Center(
                child: AutoSizeText(
                    minFontSize: 16,
                    maxFontSize: 20,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    'Summary',
                    style: GoogleFonts.roboto(
                        height: 0,
                        color: appColors.blackColor,
                        fontSize: 18,
                        fontWeight: AppTextFontWeight.REGULAR)),
              ),
            )),
            SizedBox(
              width: AppSize.getScreenRadiusRatio(radius: 8),
            ),
            Expanded(
                child: AutoSizeText(
                    minFontSize: 16,
                    maxFontSize: 20,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    'Food details',
                    style: GoogleFonts.roboto(
                        height: 0,
                        color: appColors.darkGreyColor,
                        fontSize: 18,
                        fontWeight: AppTextFontWeight.REGULAR))),
          ],
        ),
      ),
    );
  }
}
