import 'package:animal_aid_app/common/services/shared_preferences_wrapper/preferences_values/shared_preferences_string_value.dart';
import 'package:animal_aid_app/common/services/shared_preferences_wrapper/shared_preferences_wrapper.dart';

class LocalePreferences {
  static final SharedPreferencesWrapper<SharedPreferencesStringValue>
      _localeData = SharedPreferencesWrapper(preferencesKey: 'locale');

  static Future<String?> get() async {
    final result = await _localeData.data;

    return result?.value;
  }

  static Future<void> save(String locale) async {
    await _localeData.saveData(
      SharedPreferencesStringValue(locale),
    );
  }
}
