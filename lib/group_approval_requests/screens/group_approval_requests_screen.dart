import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/group_approval_requests/widgets/group_approval_requests/group_approval_requests.dart';
import 'package:flutter/material.dart';

class GroupApprovalRequestsScreen extends StatelessWidget {
  const GroupApprovalRequestsScreen({Key? key}) : super(key: key);
  static String createRoutePath() => '/group-approval-requests/';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(context.strings.requestsHandling),
        ),
        body: GroupApprovalRequests(),
      );
}
