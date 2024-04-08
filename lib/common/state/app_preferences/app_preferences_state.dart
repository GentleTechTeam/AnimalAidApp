import 'package:animal_aid_app/common/constants/supported_locale.dart';
import 'package:flutter/material.dart';

class AppPreferencesState {
  final ThemeMode currentThemeMode;
  final ThemeMode savedThemeMode;
  final SupportedLocale currentSupportedLocale;
  final SupportedLocale savedSupportedLocale;

  AppPreferencesState({
    required this.currentThemeMode,
    required this.savedThemeMode,
    required this.currentSupportedLocale,
    required this.savedSupportedLocale,
  });

  AppPreferencesState.initial({
    this.currentThemeMode = ThemeMode.system,
    this.savedThemeMode = ThemeMode.system,
    this.currentSupportedLocale = SupportedLocale.en,
    this.savedSupportedLocale = SupportedLocale.en,
  });

  AppPreferencesState copyWith({
    ThemeMode? currentThemeMode,
    ThemeMode? savedThemeMode,
    SupportedLocale? currentSupportedLocale,
    SupportedLocale? savedSupportedLocale,
  }) =>
      AppPreferencesState(
        currentThemeMode: currentThemeMode ?? this.currentThemeMode,
        savedThemeMode: savedThemeMode ?? this.savedThemeMode,
        currentSupportedLocale:
            currentSupportedLocale ?? this.currentSupportedLocale,
        savedSupportedLocale: savedSupportedLocale ?? this.savedSupportedLocale,
      );
}
