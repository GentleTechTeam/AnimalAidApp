import 'package:animal_aid_app/common/constants/widget_keys.dart';
import 'package:animal_aid_app/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';

import '../../utils/find_parsed_text.dart';
import 'api_mocks/posts_feed.dart';
import 'test_helpers/mocks_setup.dart';

void runLazyListScrollTests() {
  group('Lazy loading list', () {
    testWidgets(
        'Allows to load more posts when more posts available and list is'
        ' scrolled to the end', (WidgetTester tester) async {
      await app.main();

      mockGqlClient();
      mockInitialRouteService();

      await tester.pumpAndSettle();

      final lastPostDescriptionOnSecondPageFinder = findParsedText(
        mockPostFeedResponseWithoutLocationFilterPageTwo
            .feedItems.last.description,
      );
      expect(lastPostDescriptionOnSecondPageFinder, findsNothing);

      final postsListFinder = find.byKey(WidgetKeys.lazyPostsList);
      await tester.dragUntilVisible(
        lastPostDescriptionOnSecondPageFinder,
        postsListFinder,
        const Offset(0, -500),
      );

      await tester.pumpAndSettle();
      expect(lastPostDescriptionOnSecondPageFinder, findsOneWidget);
    });
  });
}
