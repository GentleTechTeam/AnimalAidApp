import 'package:animal_aid_app/common/services/shared_preferences_wrapper/preferences_values/shared_preferences_bool_value.dart';
import 'package:animal_aid_app/common/services/shared_preferences_wrapper/shared_preferences_wrapper.dart';

class UserPreferencesService {
  final SharedPreferencesWrapper<SharedPreferencesBoolValue>
      _onboardingCompleted =
      SharedPreferencesWrapper(preferencesKey: 'onboarding_completed');

  Future<bool> needToDisplayOnboarding() async {
    SharedPreferencesBoolValue? onboardingCompletedData =
        await _onboardingCompleted.data;
    if (onboardingCompletedData == null) {
      return true;
    }

    return !onboardingCompletedData.value;
  }

  Future<void> markOnboardingAsFinished() => _onboardingCompleted.saveData(
        SharedPreferencesBoolValue(value: true),
      );
}
