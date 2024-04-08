import 'package:animal_aid_app/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';

import '../../utils/find_parsed_text.dart';
import 'api_mocks/main_tag_groups.dart';
import 'api_mocks/posts_feed.dart';
import 'test_helpers/mocks_setup.dart';

void runTabsTapTests() {
  group('Tabs tap', () {
    testWidgets(
        'When tabs were tapped, new posts should be received from api'
        ' with right tags', (WidgetTester tester) async {
      await app.main();

      mockGqlClient();
      mockInitialRouteService();

      await tester.pumpAndSettle();

      final urgentFirstPostDescriptionFinder = findParsedText(
        mockUrgentPostFeedResponse.feedItems.first.description,
      );
      expect(urgentFirstPostDescriptionFinder, findsNothing);

      await tester.tap(find.text(mockUrgentTabLabel));

      await tester.pumpAndSettle();
      expect(urgentFirstPostDescriptionFinder, findsWidgets);
    });
  });
}
