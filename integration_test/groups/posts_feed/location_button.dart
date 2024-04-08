import 'package:animal_aid_app/common/constants/widget_keys.dart';
import 'package:animal_aid_app/main.dart' as app;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../utils/find_parsed_text.dart';
import 'api_mocks/posts_feed.dart';
import 'api_mocks/search_locations.dart';
import 'service_mocks/location_service.dart';
import 'test_helpers/mocks_setup.dart';

void runLocationButtonTests() {
  group('Location button', () {
    testWidgets('can change location by searching target location',
        (WidgetTester tester) async {
      await app.main();

      // set up mocks
      mockGqlClient();
      mockLocationService();
      mockInitialRouteService();

      const durationAfterEnterSearchedText = Duration(milliseconds: 500);
      // wait for app to render
      await tester.pumpAndSettle();

      // Ensure that posts feed has been loaded with initial data
      expect(
        findParsedText(
          mockPostFeedResponseWithoutLocationFilter.feedItems.first.description,
        ),
        findsWidgets,
      );

      // find location button and tap on it
      final locationButtonFinder = find.byKey(
        WidgetKeys.postsFeedLocationControl,
      );
      await tester.tap(locationButtonFinder);
      await tester.pumpAndSettle();

      // ensure that location button expanded with initial location
      final initialLocationTextFinder = find.text(mockInitialLocationLabel);
      expect(initialLocationTextFinder, findsOneWidget);

      // tap on location button to open location search dialog
      await tester.tap(locationButtonFinder);
      await tester.pumpAndSettle();

      // search for specific city using text field
      final locationSearchFieldFinder = find.byType(TextField).first;
      await tester.enterText(locationSearchFieldFinder, mockLocationLabel);
      await tester.pumpAndSettle(durationAfterEnterSearchedText);

      // select widget with mockLocationLabel option
      final userSearchOptionFinder = find.descendant(
        of: find.byType(ListView),
        matching: find.text(mockLocationLabel),
      );
      await tester.tap(userSearchOptionFinder);
      await tester.pumpAndSettle();

      // ensure than mockLocationLabel option has been applied and visible in location control
      final locationButtonUserSearchOptionApplied = find.ancestor(
        of: find.text(mockLocationLabel),
        matching: find.byKey(WidgetKeys.postsFeedLocationControl),
      );
      expect(
        locationButtonUserSearchOptionApplied,
        findsOneWidget,
      );

      expect(
        findParsedText(
          mockPostFeedResponseWithLocationFilter.feedItems.first.description,
        ),
        findsWidgets,
      );
    });
  });
}
