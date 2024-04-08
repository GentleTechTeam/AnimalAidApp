import 'package:animal_aid_app/favorite_posts/screens/favorite_posts_screen.dart';
import 'package:animal_aid_app/group_approval_requests/screens/group_approval_requests_screen.dart';
import 'package:animal_aid_app/group_posts_auto_import_management/screens/group_posts_auto_import_management_screen.dart';
import 'package:animal_aid_app/group_posts_management/screens/group_posts_management_screen.dart';
import 'package:animal_aid_app/groups_management/screens/groups_management_screen.dart';
import 'package:animal_aid_app/groups_registration/screens/groups_registration_screen.dart';
import 'package:animal_aid_app/intrusive_app_update/screens/intrusive_app_update_screen.dart';
import 'package:animal_aid_app/onboarding/screens/onboarding_screen.dart';
import 'package:animal_aid_app/post/screens/post_screen.dart';
import 'package:animal_aid_app/posts_feed/screens/posts_feed_screen.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class NavigatorService {
  final FluroRouter _router = FluroRouter();

  NavigatorService() {
    _configureRoutes();
  }

  // ignore: avoid-dynamic
  Route<dynamic>? getGenerator(RouteSettings routeSettings) =>
      _router.generator(routeSettings);

  void pop<T>({
    required BuildContext context,
    T? result,
  }) =>
      _router.pop<T>(context, result);

  void navigateToGroupsRegistration({required BuildContext context}) =>
      _router.navigateTo(
        context,
        GroupsRegistrationScreen.createRoutePath(),
        maintainState: false,
      );

  void navigateToGroupApprovalRequests({required BuildContext context}) =>
      _router.navigateTo(
        context,
        GroupApprovalRequestsScreen.createRoutePath(),
      );

  void navigateToGroupsManagement({required BuildContext context}) =>
      _router.navigateTo(
        context,
        GroupsManagementScreen.createRoutePath(),
        maintainState: false,
      );

  void navigateToGroupPostsManagement({
    required BuildContext context,
    required String groupId,
  }) =>
      _router.navigateTo(
        context,
        GroupPostsManagementScreen.createNavigationPath(groupId: groupId),
      );

  void navigateToGroupPostsAutoImportManagement({
    required BuildContext context,
    required String groupId,
  }) =>
      _router.navigateTo(
        context,
        GroupPostsAutoImportManagementScreen.createNavigationPath(
          groupId: groupId,
        ),
      );

  void navigateToPostsScreen({
    required BuildContext context,
    bool clearStack = false,
  }) =>
      _router.navigateTo(
        context,
        '/',
        clearStack: clearStack,
      );

  void navigateToPostScreen({
    required BuildContext context,
    required String groupId,
    required String postId,
  }) =>
      _router.navigateTo(
        context,
        PostScreen.createNavigationPath(
          groupId: groupId,
          postId: postId,
        ),
      );

  void navigateToFavoritePostsScreen({
    required BuildContext context,
  }) =>
      _router.navigateTo(
        context,
        FavoritePostsScreen.createRoutePath(),
      );

  // ignore: long-method
  void _configureRoutes() => _router
    ..define(
      '/',
      handler: Handler(handlerFunc: (_, __) => const PostsFeedScreen()),
    )
    ..define(
      IntrusiveAppUpdateScreen.createRoutePath(),
      handler:
          Handler(handlerFunc: (_, __) => const IntrusiveAppUpdateScreen()),
    )
    ..define(
      OnboardingScreen.createRoutePath(),
      handler: Handler(handlerFunc: (_, __) => const OnboardingScreen()),
    )
    ..define(
      GroupsRegistrationScreen.createRoutePath(),
      handler:
          Handler(handlerFunc: (_, __) => const GroupsRegistrationScreen()),
      transitionType: TransitionType.cupertino,
    )
    ..define(
      GroupApprovalRequestsScreen.createRoutePath(),
      handler:
          Handler(handlerFunc: (_, __) => const GroupApprovalRequestsScreen()),
      transitionType: TransitionType.cupertino,
    )
    ..define(
      GroupsManagementScreen.createRoutePath(),
      handler: Handler(handlerFunc: (_, __) => const GroupsManagementScreen()),
      transitionType: TransitionType.cupertino,
    )
    ..define(
      GroupPostsManagementScreen.createRoutePath(),
      handler: Handler(handlerFunc: (_, params) {
        final groupId =
            params[GroupPostsManagementScreen.groupParamName]!.first;

        return GroupPostsManagementScreen(groupId: groupId);
      }),
      transitionType: TransitionType.cupertino,
    )
    ..define(
      GroupPostsAutoImportManagementScreen.createRoutePath(),
      handler: Handler(handlerFunc: (_, params) {
        final groupId =
            params[GroupPostsAutoImportManagementScreen.groupParamName]!.first;

        return GroupPostsAutoImportManagementScreen(groupId: groupId);
      }),
      transitionType: TransitionType.cupertino,
    )
    ..define(
      PostScreen.createRoutePath(),
      handler: Handler(
        handlerFunc: (_, params) {
          final groupId = params[PostScreen.groupParamName]!.first;
          final postId = params[PostScreen.postParamName]!.first;

          return PostScreen(
            groupId: groupId,
            postId: postId,
          );
        },
      ),
      transitionType: TransitionType.cupertino,
    )
    ..define(
      FavoritePostsScreen.createRoutePath(),
      handler: Handler(
        handlerFunc: (_, __) => const FavoritePostsScreen(),
      ),
      transitionType: TransitionType.cupertino,
    );
}
