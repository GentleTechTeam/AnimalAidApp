import 'package:animal_aid_app/common/services/shared_preferences_wrapper/preferences_values/shared_preferences_bool_value.dart';
import 'package:animal_aid_app/common/services/shared_preferences_wrapper/preferences_values/shared_preferences_double_value.dart';
import 'package:animal_aid_app/common/services/shared_preferences_wrapper/preferences_values/shared_preferences_string_value.dart';
import 'package:animal_aid_app/common/services/shared_preferences_wrapper/preferences_values/shared_preferences_value.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesWrapper<T extends SharedPreferencesValue> {
  final String preferencesKey;
  SharedPreferences? _prefsInstance;

  SharedPreferencesWrapper({
    required String preferencesKey,
  }) : preferencesKey = 'animal_aid_app_preferences_$preferencesKey';

  Future<T?> get data async => _readData();

  Future<void> saveData(T data) async {
    final prefs = await _getPrefs();
    if (data is SharedPreferencesBoolValue) {
      // ignore: avoid-ignoring-return-values
      await prefs.setBool(preferencesKey, data.value);

      return;
    }
    if (data is SharedPreferencesDoubleValue) {
      // ignore: avoid-ignoring-return-values
      await prefs.setDouble(preferencesKey, data.value);

      return;
    }
    if (data is SharedPreferencesStringValue) {
      // ignore: avoid-ignoring-return-values
      await prefs.setString(preferencesKey, data.value);

      return;
    }
  }

  Future<void> remove() async {
    final prefs = await _getPrefs();
    // ignore: avoid-ignoring-return-values
    await prefs.remove(preferencesKey);
  }

  Future<T?> _readData() async {
    final prefs = await _getPrefs();
    final data = prefs.get(preferencesKey);
    if (data == null) {
      return null;
    }

    if (data is bool) {
      return SharedPreferencesBoolValue(value: data) as T;
    }
    if (data is double) {
      return SharedPreferencesDoubleValue(data) as T;
    }
    if (data is String) {
      return SharedPreferencesStringValue(data) as T;
    }

    return null;
  }

  Future<SharedPreferences> _getPrefs() async {
    if (_prefsInstance != null) {
      // ignore: avoid-non-null-assertion
      return _prefsInstance!;
    }
    _prefsInstance = await SharedPreferences.getInstance();

    // ignore: avoid-non-null-assertion
    return _prefsInstance!;
  }
}
