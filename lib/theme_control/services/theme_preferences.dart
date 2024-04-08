import 'package:animal_aid_app/common/services/shared_preferences_wrapper/preferences_values/shared_preferences_string_value.dart';
import 'package:animal_aid_app/common/services/shared_preferences_wrapper/shared_preferences_wrapper.dart';
import 'package:animal_aid_app/theme_control/extensions/theme_mode_extension.dart';
import 'package:flutter/material.dart';

class ThemePreferences {
  static final SharedPreferencesWrapper<SharedPreferencesStringValue>
      _themeModeData = SharedPreferencesWrapper(preferencesKey: 'theme_mode');

  static Future<ThemeMode> get() async {
    final result = await _themeModeData.data;

    if (result == null) {
      return ThemeMode.system;
    }

    return ThemeModeExtension.deserialize(result.value);
  }

  static Future<void> save(ThemeMode themeMode) async {
    await _themeModeData.saveData(
      SharedPreferencesStringValue(ThemeModeExtension.serialize(themeMode)),
    );
  }
}
