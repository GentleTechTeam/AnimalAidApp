import 'package:animal_aid_app/common/api/index.dart';
import 'package:flutter/material.dart';

const double _iconSize = 20;

class GroupApprovalStatusIcon extends StatelessWidget {
  final GCharityGroupApprovalStatus approvalStatus;

  const GroupApprovalStatusIcon({
    Key? key,
    required this.approvalStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (approvalStatus) {
      case GCharityGroupApprovalStatus.APPROVED:
        return Icon(
          Icons.check_circle_outline,
          color: Theme.of(context).primaryColor,
          size: _iconSize,
        );
      case GCharityGroupApprovalStatus.PENDING:
        return Icon(
          Icons.watch_later_outlined,
          color: Theme.of(context).hintColor,
          size: _iconSize,
        );
      case GCharityGroupApprovalStatus.DECLINED:
        return Icon(
          Icons.cancel_outlined,
          color: Theme.of(context).errorColor,
          size: _iconSize,
        );
      default:
        return const SizedBox(
          width: _iconSize,
        );
    }
  }
}
