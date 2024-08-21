import 'dart:async';

import 'package:femispace/core/constants/app_route_paths.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
const SplashView({ super.key });

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 1), (){
      context.go(AppRoutePaths.NUTRITIONS_VIEW_PATH);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(color: Colors.black,child: Center(child: Text('FemiSpace',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),),
    );
  }
}