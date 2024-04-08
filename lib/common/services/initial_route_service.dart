import 'package:animal_aid_app/common/services/user_preferences_service.dart';
import 'package:animal_aid_app/intrusive_app_update/screens/intrusive_app_update_screen.dart';
import 'package:animal_aid_app/intrusive_app_update/services/client_meta_service.dart';
import 'package:animal_aid_app/onboarding/screens/onboarding_screen.dart';
import 'package:get_it/get_it.dart';

class InitialRouteService {
  String? initialRoute;

  final _userPreferencesService = GetIt.I<UserPreferencesService>();
  final _clientMetaService = GetIt.I<ClientMetaService>();

  Future<void> init() async {
    initialRoute = await _getInitialRoute();
  }

  Future<String> _getInitialRoute() async {
    await _clientMetaService.validateAppVersion();
    final needToDisplayOnboarding =
        await _userPreferencesService.needToDisplayOnboarding();

    if (_clientMetaService.updateUrl != null) {
      return IntrusiveAppUpdateScreen.createRoutePath();
    }
    if (needToDisplayOnboarding) {
      return OnboardingScreen.createRoutePath();
    }

    return '/';
  }
}
