import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/group_posts_management/widgets/group_posts_management/group_posts_management.dart';
import 'package:animal_aid_app/group_posts_management/widgets/main_tag_groups_button/main_tag_groups_button.dart';
import 'package:flutter/material.dart';

class GroupPostsManagementScreen extends StatelessWidget {
  static const groupParamName = 'groupId';
  final String groupId;

  static const _routeBasePath = '/groups-posts-management/';

  const GroupPostsManagementScreen({
    Key? key,
    required this.groupId,
  }) : super(key: key);

  static String createNavigationPath({required String groupId}) =>
      '$_routeBasePath$groupId';

  static String createRoutePath() => '$_routeBasePath:$groupParamName';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(context.strings.posts),
          actions: const [MainTagGroupsButton()],
        ),
        body: GroupPostsManagement(groupId: groupId),
      );
}
