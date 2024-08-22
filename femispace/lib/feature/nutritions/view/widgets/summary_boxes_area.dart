import 'package:auto_size_text/auto_size_text.dart';
import 'package:femispace/core/constants/app_colors.dart';
import 'package:femispace/core/constants/app_size.dart';
import 'package:femispace/core/constants/app_text_font_weight.dart';
import 'package:femispace/fakeData/app_fake_data.dart';
import 'package:femispace/feature/nutritions/model/summary_box_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SummaryBoxesArea extends StatelessWidget {
  const SummaryBoxesArea({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = AppColors(context: context);
    final List<SummaryBoxModel> summaryBoxModelList =
        AppFakeData.getSummaryBoxModelList(appColors: appColors);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(summaryBoxModelList.length, (index) {
        return Row(
          children: [
            _createBox(
                summaryBoxModel: summaryBoxModelList[index], appColors: appColors),   Visibility(
                visible: AppFakeData.rowButtonList.length-1!=index,
                child:SizedBox(width:AppSize.getScreenWidthRatio(width: 12) ,) )
          ],
        );
      })),
    );
  }

  Container _createBox(
      {required SummaryBoxModel summaryBoxModel,
      required AppColors appColors}) {
    return Container(
      padding: const EdgeInsets.only(top: 16, bottom: 12, left: 12, right: 12),
      height: AppSize.getScreenHeightRatio(height: 150),
      width: AppSize.getScreenHeightRatio(height: 170),
      decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(AppSize.getScreenRadiusRatio(radius: 12)),
          color: summaryBoxModel.boxColor),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: AutoSizeText(
              minFontSize: 16,
              maxFontSize: 20,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              summaryBoxModel.name,
              style: GoogleFonts.roboto(
                  height: 0,
                  color: appColors.blackColor,
                  fontSize: 18,
                  fontWeight: AppTextFontWeight.SEMI_BOLD),
            ),
          ),
          SizedBox(
            height: AppSize.getScreenHeightRatio(height: 10),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: AutoSizeText(
                            minFontSize: 16,
                            maxFontSize: 20,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            '${summaryBoxModel.percentileValue}%',
                            style: GoogleFonts.roboto(
                                height: 0,
                                color: appColors.blackColor,
                                fontSize: 18,
                                fontWeight: AppTextFontWeight.BOLD),
                          ),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Flexible(
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (summaryBoxModel.positiveValue? appColors.greenBackGroundColor:appColors.darkRedColor)
                                    .withOpacity(.1)),
                            child: Icon(
                            summaryBoxModel.positiveValue?  Icons.arrow_upward_rounded:Icons.arrow_downward_rounded,
                              color: summaryBoxModel.positiveValue? appColors.greenBackGroundColor:appColors.darkRedColor,
                              size: AppSize.getScreenHeightRatio(height: 14),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: AppSize.getScreenHeightRatio(height: 3),
                ),
                Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.center,
                    child: AutoSizeText(
                      minFontSize: 12,
                      maxFontSize: 16,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      '${summaryBoxModel.kcalValue} kcal',
                      style: GoogleFonts.roboto(
                          height: 0,
                          color: appColors.blackColor,
                          fontSize: 14,
                          fontWeight: AppTextFontWeight.MEDIUM),
                    ),
                  ),
                ),  SizedBox(
                  height: AppSize.getScreenHeightRatio(height: 3),
                ),
                Expanded(
                  flex: 2,
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: LinearPercentIndicator(
                          padding: EdgeInsets.zero,
                          lineHeight: AppSize.getScreenHeightRatio(height: 10),
                          animation: true,
                          animationDuration: 50,
                          percent: ((summaryBoxModel.percentileValue > 100
                                  ? 100
                                  : summaryBoxModel.percentileValue) /
                              100),
                          progressColor: summaryBoxModel.progressColor,
                          backgroundColor: appColors.whiteColor,
                          barRadius: const Radius.circular(16),
                        
                        )))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
