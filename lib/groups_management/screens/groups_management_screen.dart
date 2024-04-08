import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/groups_management/widgets/groups_management/groups_management.dart';
import 'package:flutter/material.dart';

class GroupsManagementScreen extends StatelessWidget {
  const GroupsManagementScreen({Key? key}) : super(key: key);
  static String createRoutePath() => '/groups-management/';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(context.strings.groupsManagement),
        ),
        body: GroupsManagement(),
      );
}
