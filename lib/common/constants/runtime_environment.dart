import 'dart:io';

import 'package:flutter/foundation.dart';

// Wrapper around Platform  class from dart:io. Intended to fix web compatibility issues.
class RuntimeEnvironment {
  static final bool isAndroid = !kIsWeb && Platform.isAndroid;
  static final bool isIOS = !kIsWeb && Platform.isIOS;
  static final bool isLinux = !kIsWeb && Platform.isLinux;
  static final bool isMacos = !kIsWeb && Platform.isMacOS;
  static const bool isWeb = kIsWeb;
}
