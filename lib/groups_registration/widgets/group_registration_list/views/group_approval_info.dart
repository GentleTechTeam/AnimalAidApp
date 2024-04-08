import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class GroupApprovalInfo extends StatelessWidget {
  final GCharityGroupApprovalStatus approvalStatus;

  const GroupApprovalInfo({
    Key? key,
    required this.approvalStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textStyle = TextStyle(
      color: theme.hintColor,
      fontSize: theme.textTheme.caption?.fontSize,
    );

    switch (approvalStatus) {
      case GCharityGroupApprovalStatus.NONE:
        return Text(
          context.strings.notActive.toLowerCase(),
          style: textStyle,
        );
      case GCharityGroupApprovalStatus.APPROVED:
        return Text(
          context.strings.active.toLowerCase(),
          style: textStyle,
        );
      case GCharityGroupApprovalStatus.PENDING:
        return Text(
          context.strings.awaitsConfirmation,
          style: textStyle,
        );
      case GCharityGroupApprovalStatus.DECLINED:
        return Text(
          context.strings.requestDeclined,
          style: textStyle,
        );
      default:
        return const Text('');
    }
  }
}
