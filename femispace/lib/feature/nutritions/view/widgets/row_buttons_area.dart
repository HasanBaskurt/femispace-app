// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:animate_do/animate_do.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:femispace/core/constants/app_colors.dart';
import 'package:femispace/core/constants/app_providers.dart';
import 'package:femispace/core/constants/app_size.dart';
import 'package:femispace/core/constants/app_text_font_weight.dart';
import 'package:femispace/core/constants/fakeData/app_fake_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';


class RowButtonsArea extends ConsumerWidget {
  const RowButtonsArea({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appColors = AppColors(context: context);
     final providerWatch= ref.watch(AppProviders.nutritionsViewModelProvider);
     final providerRead= ref.read(AppProviders.nutritionsViewModelProvider);
    
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(AppFakeData.rowButtonList.length, (index) {
          return 
  FadeInUp(    duration:const Duration(milliseconds: 500), 
            delay:  Duration(milliseconds: 1750+(index*100)),
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    providerRead.changeSelectedRowButtonId(AppFakeData.rowButtonList[index].id);
                  },
                  child: Container(
                    padding:
                         EdgeInsets.symmetric(horizontal: AppSize.getScreenWidthRatio(width: 17), vertical: AppSize.getScreenHeightRatio(height: 10)),
                    decoration: BoxDecoration(
                      color:
                          providerWatch.selectedRowButtonId == AppFakeData.rowButtonList[index].id
                              ? appColors.purpleColor
                              : appColors.passiveGreyColor,
                      borderRadius: BorderRadius.circular(
                          AppSize.getScreenRadiusRatio(radius: 20)),
                    ),
                    child: Center(
                      child: AutoSizeText(
                          minFontSize: 18,
                          maxFontSize: 22,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          AppFakeData.rowButtonList[index].name,
                          style: GoogleFonts.roboto(
                              height: 0,
                              color: providerWatch.selectedRowButtonId ==
                                      AppFakeData.rowButtonList[index].id
                                  ? appColors.whiteColor
                                  : appColors.blackColor,
                              fontSize: 20,
                              fontWeight: AppTextFontWeight.REGULAR)),
                    ),
                  ),
                ),
                Visibility(
                    visible: AppFakeData.rowButtonList.length - 1 != index,
                    child: SizedBox(
                      width: AppSize.getScreenWidthRatio(width: 10),
                    ))
              ],
            ),
          );
        }),
      ),
    );
  }
}
