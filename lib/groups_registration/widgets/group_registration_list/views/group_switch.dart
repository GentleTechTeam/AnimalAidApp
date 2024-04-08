import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/groups_registration/widgets/group_registration_list/views/group_approval_status_icon.dart';
import 'package:flutter/material.dart';

class GroupSwitch extends StatelessWidget {
  final VoidCallback onSwitchOn;
  final GCharityGroupApprovalStatus approvalStatus;

  const GroupSwitch({
    Key? key,
    required this.onSwitchOn,
    required this.approvalStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final onChangeHandler = approvalStatus == GCharityGroupApprovalStatus.NONE
        ? (bool value) => onSwitchOn()
        : null;
    final value =
        approvalStatus == GCharityGroupApprovalStatus.NONE ? false : true;

    return Row(
      children: [
        GroupApprovalStatusIcon(approvalStatus: approvalStatus),
        Switch.adaptive(
          value: value,
          activeColor: Theme.of(context).primaryColor,
          onChanged: onChangeHandler,
        ),
      ],
    );
  }
}
