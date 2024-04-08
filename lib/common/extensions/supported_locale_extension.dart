import 'package:animal_aid_app/common/constants/supported_locale.dart';
import 'package:flutter/material.dart';

extension SupportedLocaleExtension on SupportedLocale {
  String get languageName {
    switch (this) {
      case SupportedLocale.en:
        return 'English';
    }
  }

  Locale toLocale() => Locale(name);

  static SupportedLocale fromLocaleName(String locale) {
    final normalized = locale.contains('_') ? locale.split('_').first : locale;

    return SupportedLocale.values.firstWhere(
      (supportedLocale) => supportedLocale.name == normalized,
      orElse: () => SupportedLocale.en,
    );
  }
}
