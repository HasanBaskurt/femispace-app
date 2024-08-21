import 'package:femispace/core/constants/app_colors.dart';
import 'package:femispace/core/constants/app_text_font_weight.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NutritionsTextStyles {
   final AppColors appColors;
  NutritionsTextStyles({required this.appColors});
  late TextStyle titleTextStyle = GoogleFonts.roboto(
      height: 0,
      color: appColors.titleWhiteColor,
      fontSize: 20,
      fontWeight: AppTextFontWeight.SEMI_BOLD);
}
