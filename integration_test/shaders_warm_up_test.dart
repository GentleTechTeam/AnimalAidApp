import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:integration_test/integration_test.dart';

import 'groups/shaders_warm_up/shaders_warm_up.dart';

const _lanesNumber = 5;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  // Prevent error which comes because we can setup services multiple times (mock, rerun app)
  GetIt.I.allowReassignment = true;

  group('Shaders warm up', () {
    for (var i = 0; i < _lanesNumber; i++) {
      runShadersWarmUp();
    }
  });
}
