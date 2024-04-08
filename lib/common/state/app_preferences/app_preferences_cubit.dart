import 'package:animal_aid_app/common/constants/supported_locale.dart';
import 'package:animal_aid_app/common/extensions/supported_locale_extension.dart';
import 'package:animal_aid_app/common/state/app_preferences/app_preferences_state.dart';
import 'package:animal_aid_app/locale_control/services/locale_preferences.dart';
import 'package:animal_aid_app/theme_control/services/theme_preferences.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl_standalone.dart' as intl_standalone;

class AppPreferencesCubit extends Cubit<AppPreferencesState> {
  AppPreferencesCubit() : super(AppPreferencesState.initial());

  Future<void> restoreThemeMode() async => emit(
        state.copyWith(
          savedThemeMode: await ThemePreferences.get(),
        ),
      );

  void chooseThemeMode(ThemeMode? themeMode) => emit(
        state.copyWith(currentThemeMode: themeMode),
      );

  void saveTheme() {
    ThemePreferences.save(state.currentThemeMode);
    emit(
      state.copyWith(savedThemeMode: state.currentThemeMode),
    );
  }

  void resetCurrentTheme() => emit(
        state.copyWith(currentThemeMode: state.savedThemeMode),
      );

  Future<void> restoreLocale() async {
    String? savedLocaleName = await LocalePreferences.get();
    savedLocaleName ??= await intl_standalone.findSystemLocale();

    emit(
      state.copyWith(
        savedSupportedLocale: SupportedLocaleExtension.fromLocaleName(
          savedLocaleName,
        ),
      ),
    );
  }

  void chooseLocale(SupportedLocale? locale) => emit(
        state.copyWith(currentSupportedLocale: locale),
      );

  void saveLocale() {
    LocalePreferences.save(state.currentSupportedLocale.name);
    emit(
      state.copyWith(savedSupportedLocale: state.currentSupportedLocale),
    );
  }

  void resetCurrentLocale() => emit(
        state.copyWith(currentSupportedLocale: state.savedSupportedLocale),
      );
}
