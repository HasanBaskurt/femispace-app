import 'package:auto_size_text/auto_size_text.dart';
import 'package:femispace/core/constants/app_colors.dart';
import 'package:femispace/core/constants/app_size.dart';
import 'package:femispace/core/constants/app_text_font_weight.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectionDateOrPeriodButton extends StatelessWidget {
  const SelectionDateOrPeriodButton({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = AppColors(context: context);
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            
            shape:
                RoundedRectangleBorder(
                  side:  BorderSide(
                    width: 0.8,
                    color: appColors.greyColor
                  ),
                  borderRadius: BorderRadius.circular(8)),
            minimumSize:
                Size(double.infinity, AppSize.getScreenHeightRatio(height: 65)),
            maximumSize:
                Size(double.infinity, AppSize.getScreenHeightRatio(height: 65)),
            backgroundColor: appColors.whiteColor,
            elevation: 0,
            splashFactory: NoSplash.splashFactory),
        onPressed: () {
          debugPrint('Click Date');
        },
        child: Row(
          children: [
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: AutoSizeText(
                          minFontSize: 14,
                          maxFontSize: 18,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          'Select date or preiod',
                          style: GoogleFonts.roboto(
                              height: 0,
                              color: appColors.purpleColor,
                              fontSize: 16,
                              fontWeight: AppTextFontWeight.SEMI_BOLD),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: AppSize.getScreenHeightRatio(height: 5),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: AutoSizeText(
                              minFontSize: 14,
                              maxFontSize: 18,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              'Today • ',
                              style: GoogleFonts.roboto(
                                  height: 0,
                                  color: appColors.blackColor,
                                  fontSize: 16,
                                  fontWeight: AppTextFontWeight.MEDIUM),
                            ),
                          ),Flexible(
                            child: AutoSizeText(
                              minFontSize: 14,
                              maxFontSize: 18,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              'Wed, 11/1/2023',
                              style: GoogleFonts.roboto(
                                  height: 0,
                                  color: appColors.blackColor,
                                  fontSize: 16,
                                  fontWeight: AppTextFontWeight.REGULAR),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Icon(Icons.keyboard_arrow_down_sharp,color: appColors.blackColor,
                    size: AppSize.getScreenHeightRatio(height: 28),)
                  ),
                ],
              ),
          ],
        )
        );
  }
}
