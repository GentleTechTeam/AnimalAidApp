import 'package:animal_aid_app/common/services/initial_route_service.dart';
import 'package:animal_aid_app/common/services/location_service/location_service.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:mockito/mockito.dart';

import '../../../mocks/gql_link.dart';
import '../../../mocks/initial_route_service.dart';
import '../../../mocks/location_service.dart';
import '../../../utils/gql_request_matcher.dart';
import '../api_mocks/main_tag_groups.dart';
import '../api_mocks/posts_feed.dart';
import '../api_mocks/search_locations.dart';
import '../service_mocks/location_service.dart';

LocationServiceMock mockLocationService() {
  final locationServiceMock = LocationServiceMock();

  GetIt.I.registerSingleton<LocationService>(locationServiceMock);

  when(locationServiceMock.restoreLocation()).thenAnswer(
    (realInvocation) => Future.value(initialLocationRestorationResult),
  );

  when(locationServiceMock.saveLocation(any)).thenAnswer(
    (realInvocation) => Future.value(),
  );

  return locationServiceMock;
}

InitialRouteServiceMock mockInitialRouteService() {
  final initialRouteServiceMock = InitialRouteServiceMock();

  GetIt.I.registerSingleton<InitialRouteService>(initialRouteServiceMock);

  return initialRouteServiceMock;
}

const _locationsSearchUserOptionRes = Response(
  response: <String, dynamic>{},
  data: locationsSearchResultWithTargetOption,
);

GqlLinkMock mockGqlClient() {
  final linkMock = GqlLinkMock();
  final gqlClient = Client(link: linkMock);

  GetIt.I.registerSingleton<Client>(gqlClient);

  when(
    linkMock.request(argThat(
      const GqlRequestMatcher(
        'MainTagGroups',
      ),
    )),
  ).thenAnswer(
    (realInvocation) => Stream.fromIterable([
      Response(
        response: const <String, dynamic>{},
        data: initialMainTagGroupServiceGetDataResult,
      ),
    ]),
  );

  when(
    linkMock.request(argThat(
      const GqlRequestMatcher(
        'PostsFeed',
      ),
    )),
  ).thenAnswer(
    (realInvocation) => Stream.fromIterable([
      Response(
        response: const <String, dynamic>{},
        data: mockPostFeedResponseWithoutLocationFilter.toRawResponseData(),
      )
    ]),
  );

  when(
    linkMock.request(argThat(
      GqlRequestMatcher(
        'PostsFeed',
        matchVariables: (args) =>
            args['fromDate'] ==
            mockPostFeedResponseWithoutLocationFilter.feedItems.last.date,
      ),
    )),
  ).thenAnswer(
    (realInvocation) => Stream.fromIterable([
      Response(
        response: const <String, dynamic>{},
        data: mockPostFeedResponseWithoutLocationFilterPageTwo
            .toRawResponseData(),
      ),
    ]),
  );

  when(
    linkMock.request(argThat(
      GqlRequestMatcher(
        'PostsFeed',
        matchVariables: (args) => args['locationKey'] == mockLocationKey,
      ),
    )),
  ).thenAnswer(
    (realInvocation) => Stream.fromIterable([
      Response(
        response: const <String, dynamic>{},
        data: mockPostFeedResponseWithLocationFilter.toRawResponseData(),
      ),
    ]),
  );

  when(
    linkMock.request(argThat(
      GqlRequestMatcher(
        'PostsFeed',
        matchVariables: (args) =>
            (args['tagGroupIds'] as List<Object?>?)
                ?.contains(mockUrgentTabId) ??
            false,
      ),
    )),
  ).thenAnswer(
    (realInvocation) => Stream.fromIterable([
      Response(
        response: const <String, dynamic>{},
        data: mockUrgentPostFeedResponse.toRawResponseData(),
      ),
    ]),
  );

  when(
    linkMock.request(argThat(
      GqlRequestMatcher(
        'PostsFeed',
        matchVariables: (args) =>
            (args['tagGroupIds'] as List<Object?>?)
                ?.contains(mockFundraisingTabId) ??
            false,
      ),
    )),
  ).thenAnswer(
    (realInvocation) => Stream.fromIterable([
      Response(
        response: const <String, dynamic>{},
        data: mockFundraisingPostFeedResponse.toRawResponseData(),
      ),
    ]),
  );

  when(
    linkMock.request(argThat(
      GqlRequestMatcher(
        'SearchLocations',
        matchVariables: (data) => data['query'] == mockLocationLabel,
      ),
    )),
  ).thenAnswer(
    (realInvocation) => Stream.fromIterable([_locationsSearchUserOptionRes]),
  );

  return linkMock;
}
