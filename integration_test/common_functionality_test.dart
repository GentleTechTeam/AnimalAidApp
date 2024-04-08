import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:integration_test/integration_test.dart';

import 'groups/onboarding/onboarding.dart';
import 'groups/posts_feed/lazy_list_scroll.dart';
import 'groups/posts_feed/location_button.dart';
import 'groups/posts_feed/tabs_swipe.dart';
import 'groups/posts_feed/tabs_tap.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  // Prevent error which comes because we can setup services multiple times (mock, rerun app)
  GetIt.I.allowReassignment = true;

  group('Posts feed', () {
    runOnboardingTests();
    runLocationButtonTests();
    runLazyListScrollTests();
    runTabsTapTests();
    runTabsSwipeTests();
  });
}
