import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/group_posts_auto_import_management/widgets/group_posts_auto_import_control/group_posts_auto_import_control.dart';
import 'package:animal_aid_app/group_posts_auto_import_management/widgets/group_posts_auto_import_hint/group_posts_auto_import_hint.dart';
import 'package:animal_aid_app/group_posts_auto_import_management/widgets/views/group_posts_auto_import_layout.dart';
import 'package:flutter/material.dart';

class GroupPostsAutoImportManagementScreen extends StatelessWidget {
  final String groupId;
  static const groupParamName = 'groupId';

  static const _routeBasePath = '/groups-posts-auto-import-management/';

  const GroupPostsAutoImportManagementScreen({
    Key? key,
    required this.groupId,
  }) : super(key: key);

  static String createNavigationPath({required String groupId}) =>
      '$_routeBasePath$groupId';

  static String createRoutePath() => '$_routeBasePath:$groupParamName';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(context.strings.automation),
        ),
        body: GroupPostsAutoImportLayout(
          control: GroupPostsAutoImportControl(groupId: groupId),
          hint: const GroupPostsAutoImportHint(),
        ),
      );
}
