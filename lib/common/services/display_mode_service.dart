import 'dart:developer';

import 'package:animal_aid_app/common/constants/runtime_environment.dart';
import 'package:flutter/services.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';

// Allows Android devices to run App with maximum supported screen refresh rate.
class DisplayModeService {
  static Future<void> setDisplayMode() async {
    try {
      if (!RuntimeEnvironment.isAndroid) {
        return;
      }
      final modes = await FlutterDisplayMode.supported;
      if (modes.isEmpty) {
        return;
      }

      await FlutterDisplayMode.setHighRefreshRate();
    } on PlatformException catch (e) {
      log(e.message ?? e.toString());
    }
  }
}
