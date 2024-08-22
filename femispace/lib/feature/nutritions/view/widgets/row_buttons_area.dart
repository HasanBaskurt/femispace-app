// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_size_text/auto_size_text.dart';
import 'package:femispace/core/constants/app_colors.dart';
import 'package:femispace/core/constants/app_size.dart';
import 'package:femispace/core/constants/app_text_font_weight.dart';
import 'package:femispace/fakeData/app_fake_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RowButtonsArea extends StatelessWidget {
  const RowButtonsArea({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = AppColors(context: context);
    int selectedButtonIndex = 3;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(AppFakeData.rowButtonList.length, (index) {
          return Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 17,
                  vertical:  10),
                decoration: BoxDecoration(
                  color: selectedButtonIndex == AppFakeData.rowButtonList[index].id
                      ? appColors.purpleColor
                      : appColors.passiveGreyColor,
                  borderRadius:
                      BorderRadius.circular(AppSize.getScreenRadiusRatio(radius: 20)),
                ),
                child: Center(
                  child: AutoSizeText(
                      minFontSize: 18,
                      maxFontSize: 22,
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      AppFakeData.rowButtonList[index].name,
                      style: GoogleFonts.roboto(
                          height: 1.1,
                          color: selectedButtonIndex ==
                                  AppFakeData.rowButtonList[index].id
                              ? appColors.whiteColor
                              : appColors.blackColor,
                          fontSize: 20,
                          fontWeight: AppTextFontWeight.REGULAR)),
                ),
              ),
              Visibility(
                visible: AppFakeData.rowButtonList.length-1!=index,
                child:SizedBox(width:AppSize.getScreenWidthRatio(width: 10) ,) )
            ],
          );
        }),
      ),
    );
  }
}
