import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/groups_registration/widgets/group_registration_list/group_registration_list.dart';
import 'package:flutter/material.dart';

class GroupsRegistrationScreen extends StatelessWidget {
  const GroupsRegistrationScreen({Key? key}) : super(key: key);
  static String createRoutePath() => '/groups-registration/';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(context.strings.groupsRegistration),
        ),
        body: GroupRegistrationList(),
      );
}
