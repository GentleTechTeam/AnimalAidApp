import 'package:animal_aid_app/common/constants/widget_keys.dart';
import 'package:animal_aid_app/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';

import '../../utils/find_parsed_text.dart';
import 'api_mocks/posts_feed.dart';
import 'test_helpers/mocks_setup.dart';

void runTabsSwipeTests() {
  group('Tabs swipe', () {
    testWidgets(
        'When tabs were swiped, new posts should be received from api'
        ' with right tags', (WidgetTester tester) async {
      await app.main();

      mockGqlClient();
      mockInitialRouteService();

      await tester.pumpAndSettle();

      final fundraisingFirstPostDescriptionFinder = findParsedText(
        mockFundraisingPostFeedResponse.feedItems.first.description,
      );
      expect(fundraisingFirstPostDescriptionFinder, findsNothing);

      final tabsBodyFinder = find.byKey(WidgetKeys.postFeedTabsContent);
      while (fundraisingFirstPostDescriptionFinder.evaluate().isEmpty) {
        await tester.drag(
          tabsBodyFinder,
          Offset(-tester.binding.window.physicalSize.width, 0),
        );

        await tester.pumpAndSettle();
      }

      await tester.pumpAndSettle();
      expect(fundraisingFirstPostDescriptionFinder, findsWidgets);
    });
  });
}
