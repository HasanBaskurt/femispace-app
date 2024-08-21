import 'dart:async';

import 'package:femispace/core/constants/app_route_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
const SplashView({ super.key });

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // Close Native Splash
    FlutterNativeSplash.remove();

    
    Timer(const Duration(seconds: 1), (){
     context.go(AppRoutePaths.NUTRITIONS_VIEW_PATH);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return const  Scaffold(
      backgroundColor:  Color(0xffffffff),
      body: Center(child: Text('FemiSpace',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
    );
  }
}