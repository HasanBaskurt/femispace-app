import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class AppLogger {
  static final AppLogger _singleton = AppLogger._internal();
  AppLogger._internal();

  factory AppLogger() {
    return _singleton;
  }

  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 2,
      errorMethodCount: 8,
      lineLength: 120,
      colors: true,
      printEmojis: true,
    ),
    level: Level.info,
  );

  static void debug({
    String? errorClass,
    String? errorFunction,
    String? errorMessage,
    required Object error,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode) {
      String errorDetailMessage = _getErrorDetailMessage(
          errorClass: errorClass,
          errorFunction: errorFunction,
          errorMessage: errorMessage);
      _logger.d(errorDetailMessage, error: error, stackTrace: stackTrace);
    }
  }

  static void info({
    String? errorClass,
    String? errorFunction,
    String? errorMessage,
    required Object error,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode) {
      String errorDetailMessage = _getErrorDetailMessage(
          errorClass: errorClass,
          errorFunction: errorFunction,
          errorMessage: errorMessage);
      _logger.i(errorDetailMessage, error: error, stackTrace: stackTrace);
    }
  }

  static void warning({
    String? errorClass,
    String? errorFunction,
    String? errorMessage,
    required Object error,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode) {
      String errorDetailMessage = _getErrorDetailMessage(
          errorClass: errorClass,
          errorFunction: errorFunction,
          errorMessage: errorMessage);
      _logger.w(errorDetailMessage, error: error, stackTrace: stackTrace);
    }
  }

  static void error({
    String? errorClass,
    String? errorFunction,
    String? errorMessage,
    required Object error,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode) {
      String errorDetailMessage = _getErrorDetailMessage(
          errorClass: errorClass,
          errorFunction: errorFunction,
          errorMessage: errorMessage);
      _logger.e(errorDetailMessage, error: error, stackTrace: stackTrace);
    }
  }

  static String _getErrorDetailMessage({
    required String? errorClass,
    required String? errorFunction,
    required String? errorMessage,
  }) {
    String className = errorClass ?? '-';
    String funtionName = errorFunction ?? '-';
    String message = errorMessage ?? '-';
    return 'Class : $className \nFunction: $funtionName \nMessage : $message ';
  }
}
