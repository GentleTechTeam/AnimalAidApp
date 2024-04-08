import 'package:animal_aid_app/common/constants/widget_keys.dart';
import 'package:animal_aid_app/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';

void runOnboardingTests() {
  group('Onboarding', () {
    testWidgets(
      'can click on onboarding progress button to the end',
      (WidgetTester tester) async {
        await app.main();

        await tester.pumpAndSettle();

        final findProgressButton = find.byKey(
          WidgetKeys.onboardingProgressButton,
        );
        const pagesCount = 3;

        for (var i = 0; i < pagesCount; i++) {
          await tester.tap(findProgressButton);
          await tester.pumpAndSettle();
        }

        final findPostFeedPageTitle = find.byKey(WidgetKeys.shelterPostsAppBar);
        expect(
          findPostFeedPageTitle,
          findsWidgets,
        );
      },
    );
  });
}
