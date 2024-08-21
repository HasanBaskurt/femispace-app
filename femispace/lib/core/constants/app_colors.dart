import 'package:flutter/material.dart';

class AppColors {
  final BuildContext context;
  AppColors({required this.context});
  late final ColorScheme _themeColor = Theme.of(context).colorScheme;
  late Color greenBackgroundColor = _themeColor.onPrimary;
  late Color titleWhiteColor = _themeColor.onPrimary;
   Color firstBoxColor = const  Color(0XFFfcddec);
   Color firstBoxIconColor = const  Color(0XFFcb3883);
   Color secondBoxColor = const  Color(0XFFc7d7fe);
   Color secondBoxIconColor = const  Color(0XFF3538cd);
   Color thirdBoxColor = const  Color(0XFFd9d6fe);
   Color thirdBoxIconColor = const  Color(0XFF5925dc);
   Color fourthBoxColor = const  Color(0XFFfedf89);
   Color fourthBoxIconColor = const  Color(0XFFb54708);
   Color blackColor = Colors.black;
   
  // appbar color code :  56ac96
  // appbar title color code :  fefcfc

  // appbar first box color code :  V
  // appbar first box icon color code :  cb3883

  // appbar second box color code :  c7d7fe
  // appbar second box icon color code :  3538cd
  


  // appbar third box color code :  d9d6fe
  // appbar third box icon color code :  5925dc


  // appbar fourth box color code :  fedf89
  // appbar fourth box icon color code :  b54708

  // appBar box % color code : 4e8f44

  // datepicker title color : 924ba8

  // Row selection button passive color f7f8fa
  // Row selection button active color 8d43a4

  // First box color code : d9d6fe
  // First box bar color code : 3538cd
  
  // Second box color code : fcf2e9
  // Second box bar color code : dc6803

  // Third box color code : f9eae9
  // Third box bar color code : 912018s
  

}
