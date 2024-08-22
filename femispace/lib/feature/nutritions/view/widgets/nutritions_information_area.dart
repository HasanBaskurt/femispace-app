// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:animate_do/animate_do.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:femispace/core/constants/fakeData/app_fake_data.dart';
import 'package:femispace/feature/nutritions/model/information_box_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:femispace/core/constants/app_colors.dart';
import 'package:femispace/core/constants/app_size.dart';
import 'package:femispace/core/constants/app_text_font_weight.dart';

class NutritionsInformationArea extends StatelessWidget {
  const NutritionsInformationArea({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = AppColors(context: context);
    final informationBoxModelList =
        AppFakeData.getBoxModelList(appColors: appColors);

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppSize.getScreenWidthRatio(width: 16),
          vertical: AppSize.getScreenHeightRatio(height: 25)),
      color: appColors.greenBackGroundColor,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: FadeInLeft(
              duration: const  Duration(milliseconds: 500),
             delay:const  Duration(milliseconds: 250),
              child: AutoSizeText(
                  minFontSize: 23,
                  maxFontSize: 27,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  'Nutritions',
                  style: GoogleFonts.roboto(
                      height: 0,
                      color: appColors.titleWhiteColor,
                      fontSize: 25,
                      fontWeight: AppTextFontWeight.SEMI_BOLD)),
            ),
          ),
          SizedBox(
            height: AppSize.getScreenHeightRatio(height: 30),
          ),
          GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: informationBoxModelList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.15,
                crossAxisSpacing: 14,
                mainAxisSpacing: 18,
              ),
              itemBuilder: (context, index) {
                return 
  FadeInUp(    duration:const Duration(milliseconds: 500), 
              delay:  Duration(milliseconds: (750+((index+1)*250))),
                  child: _createInformationBox(
                      informationBoxModel: informationBoxModelList[index],
                      appColors: appColors),
                );
              }),
        ],
      ),
    );
  }

  // Create Information Box
  Widget _createInformationBox(
      {required InformationBoxModel informationBoxModel,
      required AppColors appColors}) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppSize.getScreenWidthRatio(width: 16),
          vertical: AppSize.getScreenHeightRatio(height: 16)),
      decoration: BoxDecoration(
        color: informationBoxModel.boxColor,
        borderRadius:
            BorderRadius.circular(AppSize.getScreenRadiusRatio(radius: 16)),
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: AutoSizeText(
                        minFontSize: 18,
                        maxFontSize: 22,
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        informationBoxModel.name,
                        style: GoogleFonts.roboto(
                            height: 1.1,
                            color: appColors.blackColor,
                            fontSize: 20,
                            fontWeight: AppTextFontWeight.SEMI_BOLD)),
                  ),
                ),
                Expanded(
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          informationBoxModel.iconData,
                          color: informationBoxModel.iconColor,
                          size: AppSize.getScreenHeightRatio(height: 28),
                        )))
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Row(
                  children: [
                    Flexible(
                      child: AutoSizeText(
                        minFontSize: 23,
                        maxFontSize: 27,
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        informationBoxModel.value.toString(),
                        style: GoogleFonts.roboto(
                            height: 0,
                            color: appColors.blackColor,
                            fontSize: 25,
                            fontWeight: AppTextFontWeight.BLACK),
                      ),
                    ),
                    Visibility(
                      visible: informationBoxModel.valueOfHundredActive,
                      child: Flexible(
                        child: AutoSizeText(
                          minFontSize: 11,
                          maxFontSize: 15,
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          ' /100',
                          style: GoogleFonts.roboto(
                              height: 0,
                              color: appColors.blackColor,
                              fontSize: 13,
                              fontWeight: AppTextFontWeight.MEDIUM),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: AppSize.getScreenWidthRatio(width: 3),
              ),
              Flexible(
                  child: Container(
                width: AppSize.getScreenWidthRatio(width: 58),
                padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
                decoration: BoxDecoration(
                  color: appColors.greenBackGroundColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(
                      AppSize.getScreenRadiusRatio(radius: 20)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Icon(
                        Icons.arrow_upward_rounded,
                        color: appColors.greenBackGroundColor,
                        size: AppSize.getScreenHeightRatio(height: 13),
                      ),
                    ),
                    Flexible(
                      child: AutoSizeText(
                        minFontSize: 11,
                        maxFontSize: 15,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        '${informationBoxModel.percentileValue}%',
                        style: GoogleFonts.roboto(
                            height: 0,
                            color: appColors.greenBackGroundColor,
                            fontSize: 13,
                            fontWeight: AppTextFontWeight.MEDIUM),
                      ),
                    ),
                  ],
                ),
              )),
            ],
          ),
        ],
      ),
    );
  }
}
