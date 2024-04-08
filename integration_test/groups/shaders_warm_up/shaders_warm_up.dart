import 'package:animal_aid_app/common/constants/widget_keys.dart';
import 'package:animal_aid_app/main.dart' as app;
import 'package:ferry/ferry.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../mocks/gql_link.dart';
import '../../utils/find_image_by_url.dart';
import '../../utils/gql_request_matcher.dart';
import '../../utils/open_drawer.dart';
import '../../utils/page_back.dart';
import '../posts_feed/test_helpers/mocks_setup.dart';
import 'api_mocks/posts_feed.dart';

void runShadersWarmUp() {
  testWidgets('trigger potential laggy animations',
      (WidgetTester tester) async {
    await app.main();

    // set up mocks
    clearSharedPrefs();
    mockGqlClient();
    mockInitialRouteService();

    // wait for app to render
    const timeToEnsureThatDialogAppears = Duration(milliseconds: 1000);
    await tester.pumpAndSettle(timeToEnsureThatDialogAppears);

    // Cancel initial location dialog
    await pageBack(tester);

    // Expand location control
    final locationFilterControlFinder = find.byKey(
      WidgetKeys.postsFeedLocationControl,
    );
    await tester.tap(locationFilterControlFinder);
    await tester.pumpAndSettle();

    // Open location search dialog
    await tester.tap(locationFilterControlFinder);
    await tester.pumpAndSettle();

    // Close location search dialog
    await pageBack(tester);

    // Collapse location control
    final locationControlMinimizerFinder = find.byKey(
      WidgetKeys.postsFeedLocationControlMinimizer,
    );
    await tester.tap(locationControlMinimizerFinder);
    await tester.pumpAndSettle();

    // Open post menu
    final postMenuButtonFinder = find.byKey(WidgetKeys.postMenuButton);
    await tester.tap(postMenuButtonFinder);
    await tester.pumpAndSettle();

    // Close post menu
    await pageBack(tester);

    await openDrawer(tester);

    // Trigger any page transition from app menu
    final navItemFinder = find.byKey(WidgetKeys.firstAppMenuItem);
    await tester.tap(navItemFinder);
    await tester.pumpAndSettle();

    // Close page
    await pageBack(tester);

    // Close Drawer
    await pageBack(tester);

    // Trigger post photo gallery
    final postImageFinder = findImageByUrl(postImageUrl);
    await tester.tap(postImageFinder);
    await tester.pumpAndSettle();

    // Close post photo gallery
    await pageBack(tester);
  });
}

void clearSharedPrefs() {
  SharedPreferences.setMockInitialValues({});
}

GqlLinkMock mockGqlClient() {
  final linkMock = GqlLinkMock();
  final gqlClient = Client(link: linkMock);

  GetIt.I.registerSingleton<Client>(gqlClient);

  final postFeedRes = Response(
    response: const <String, dynamic>{},
    data: postsFeedResponse,
  );
  when(
    linkMock.request(argThat(const GqlRequestMatcher('PostsFeed'))),
  ).thenAnswer(
    (realInvocation) => Stream.fromIterable([postFeedRes]),
  );

  return linkMock;
}
