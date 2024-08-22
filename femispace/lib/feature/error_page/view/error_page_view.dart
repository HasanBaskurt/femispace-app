import 'package:auto_size_text/auto_size_text.dart';
import 'package:femispace/core/constants/app_colors.dart';
import 'package:femispace/core/constants/app_text_font_weight.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorPageView extends StatelessWidget {
  const ErrorPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = AppColors(context: context);
    return Scaffold(
      body: Center(
        child: AutoSizeText(
            minFontSize: 18,
            maxFontSize: 27,
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            'Opps... Error !',
            style: GoogleFonts.roboto(
                height: 0,
                color: appColors.darkRedColor,
                fontSize: 25,
                fontWeight: AppTextFontWeight.SEMI_BOLD)),
      ),
    );
  }
}
