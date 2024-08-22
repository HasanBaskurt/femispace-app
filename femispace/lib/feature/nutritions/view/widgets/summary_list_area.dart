import 'package:auto_size_text/auto_size_text.dart';
import 'package:femispace/core/constants/app_colors.dart';
import 'package:femispace/core/constants/app_size.dart';
import 'package:femispace/core/constants/app_text_font_weight.dart';
import 'package:femispace/core/constants/fakeData/app_fake_data.dart';
import 'package:femispace/feature/nutritions/model/summary_list_model.dart';
import 'package:femispace/feature/nutritions/view/widgets/nutritions_divider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryListArea extends StatelessWidget {
  const SummaryListArea({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = AppColors(context: context);
    return Column(
      children: List.generate(AppFakeData.summaryListModelList.length, (index) {
        return Column(
          children: [
            SizedBox(
              height: AppSize.getScreenHeightRatio(height: 8),
            ),
            _createListTile(
                appColors: appColors,
                summaryListModel: AppFakeData.summaryListModelList[index]),
            SizedBox(
              height: AppSize.getScreenHeightRatio(height: 8),
            ),
            const NutritionsDivider(),
          ],
        );
      }),
    );
  }

  ListTile _createListTile(
      {required SummaryListModel summaryListModel,
      required AppColors appColors}) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: AutoSizeText(
        minFontSize: 16,
        maxFontSize: 20,
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        summaryListModel.name,
        style: GoogleFonts.roboto(
            height: 0,
            color: appColors.blackColor,
            fontSize: 18,
            fontWeight: AppTextFontWeight.SEMI_BOLD),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Flexible(
                child: AutoSizeText(
                  minFontSize: 16,
                  maxFontSize: 20,
                  textAlign: TextAlign.right,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  '${summaryListModel.percentileValue}%',
                  style: GoogleFonts.roboto(
                      height: 0,
                      color: appColors.blackColor,
                      fontSize: 18,
                      fontWeight: AppTextFontWeight.BOLD),
                ),
              ),
               SizedBox(
                width: AppSize.getScreenWidthRatio(width: 4),
              ),
              Flexible(
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (summaryListModel.positiveValue
                              ? appColors.greenBackGroundColor
                              : appColors.darkRedColor)
                          .withOpacity(.1)),
                  child: Icon(
                    summaryListModel.positiveValue
                        ? Icons.arrow_upward_rounded
                        : Icons.arrow_downward_rounded,
                    color: summaryListModel.positiveValue
                        ? appColors.greenBackGroundColor
                        : appColors.darkRedColor,
                    size: AppSize.getScreenHeightRatio(height: 14),
                  ),
                ),
              ),
            ],
          ),
          Visibility(
            visible: summaryListModel.kcalValue != null,
            child: SizedBox(
              height: AppSize.getScreenHeightRatio(height: 6),
            ),
          ),
          Visibility(
            visible: summaryListModel.kcalValue != null,
            child: Flexible(
              child: AutoSizeText(
                minFontSize: 10,
                maxFontSize: 14,
                textAlign: TextAlign.right,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                '${summaryListModel.kcalValue} kcal',
                style: GoogleFonts.roboto(
                    height: 0,
                    color: appColors.blackColor,
                    fontSize: 12,
                    fontWeight: AppTextFontWeight.MEDIUM),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
