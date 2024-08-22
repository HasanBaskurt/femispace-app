// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_size_text/auto_size_text.dart';
import 'package:femispace/fakeData/app_fake_data.dart';
import 'package:femispace/feature/nutritions/model/box_model.dart';
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
    final boxModelList = AppFakeData.getBoxModelList(appColors: appColors);

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppSize.getScreenWidthRatio(width: 16),
          vertical: AppSize.getScreenHeightRatio(height: 25)
          ),
      color: appColors.greenBackGroundColor,
      child: Column(
        children: [
          
          Align(
            alignment: Alignment.centerLeft,
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
          SizedBox(
            height: AppSize.getScreenHeightRatio(height: 30),
          ),
          GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: boxModelList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.15,
                crossAxisSpacing: 14,
                mainAxisSpacing: 18,
              ),
              itemBuilder: (context, index) {
                return _createBox(
                    boxModel: boxModelList[index],
                    appColors: appColors);
              }),
        ],
      ),
    );
  }

  Widget _createBox(
      {required BoxModel boxModel, required AppColors appColors}) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppSize.getScreenWidthRatio(width: 16),
          vertical: AppSize.getScreenHeightRatio(height: 16)),
      decoration: BoxDecoration(
        color: boxModel.boxColor,
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
                    alignment: Alignment.topCenter,
                    child: AutoSizeText(
                        minFontSize: 18,
                        maxFontSize: 22,
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        boxModel.name,
                        style: GoogleFonts.roboto(
                            height: 1.1,
                            color: appColors.blackColor,
                            fontSize: 20,
                            fontWeight: AppTextFontWeight.SEMI_BOLD)),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          boxModel.iconData,
                          color: boxModel.iconColor,
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
                        boxModel.value.toString(),
                        style: GoogleFonts.roboto(
                            height: 0,
                            color: appColors.blackColor,
                            fontSize: 25,
                            fontWeight: AppTextFontWeight.BLACK),
                      ),
                    ),
                    Visibility(
                      visible: boxModel.valueOfHundredActive,
                      child: Flexible(
                        child: AutoSizeText(
                          minFontSize: 11,
                          maxFontSize: 15,
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          '/100',
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
                        '${boxModel.percentileValue}%',
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
