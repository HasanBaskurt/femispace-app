import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:femispace/core/constants/animation_paths.dart';
import 'package:femispace/core/constants/app_colors.dart';
import 'package:femispace/core/constants/app_route_paths.dart';
import 'package:femispace/core/constants/app_size.dart';
import 'package:femispace/core/constants/app_text_font_weight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  SplashViewState createState() => SplashViewState();
}

class SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // Close Native Splash
    FlutterNativeSplash.remove();
    Timer(const Duration(milliseconds: 2500), () async {
        GoRouter.of(context).go(AppRoutePaths.NUTRITIONS_VIEW_PATH);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appColors = AppColors(context: context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: appColors.greenBackGroundColor,
      body: _buildBody(appColors: appColors),
    ));
  }

  Widget _buildBody({required AppColors appColors}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElasticInDown(
            delay: const  Duration(milliseconds: 250),
            child: Lottie.asset(AnimationPaths.SPLASH_ANIMATION),
          ),
          SizedBox(
            height: AppSize.getScreenHeightRatio(height: 15),
          ),
          ZoomIn(
             delay:const  Duration(milliseconds: 500),
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
          )
        ],
      ),
    );
  }
}
