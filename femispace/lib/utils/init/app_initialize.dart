//This class used to initialize the application process
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:logger/logger.dart';

@immutable
final class AppInitialize {
//  Project required initialize
  Future<void> create() async {
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

    // For Native Splash
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

    await runZonedGuarded<Future<void>>(_initialize, (error, stack) {
      Logger().e(error);
    });
  }

//This method used to initialize the application process
  Future<void> _initialize() async {
    // Screen PortraitUp Setting
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    //  Error Logger
    FlutterError.onError = (details) {
      Logger().e(details.exceptionAsString());
    };
  }
}
