import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSize {
  static double getScreenHeightRatio({required double height}) {
    return height.h;
  }

  static double getScreenWidthRatio({required double width}) {
    return width.w;
  }

  static double getScreenRadiusRatio({required double radius}) {
    return radius.r;
  
}
}