import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

extension ThemeModeExtension on ThemeMode {
  String getThemeModeLabel(BuildContext context) {
    switch (this) {
      case ThemeMode.system:
        return context.strings.systemDefaultTheme;
      case ThemeMode.light:
        return context.strings.lightTheme;
      case ThemeMode.dark:
        return context.strings.darkTheme;
    }
  }

  static String serialize(ThemeMode themeMode) => describeEnum(themeMode);

  static ThemeMode deserialize(String theme) => ThemeMode.values.firstWhere(
        (themeMode) => describeEnum(themeMode) == theme,
      );
}
