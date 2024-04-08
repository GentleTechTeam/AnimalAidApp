import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/widgets/views/group/group_avatar.dart';
import 'package:animal_aid_app/common/widgets/views/group/group_layout.dart';
import 'package:animal_aid_app/common/widgets/views/group/group_name.dart';
import 'package:animal_aid_app/groups_registration/widgets/group_registration_list/views/group_approval_info.dart';
import 'package:animal_aid_app/groups_registration/widgets/group_registration_list/views/group_switch.dart';
import 'package:flutter/material.dart';

class Group extends StatelessWidget {
  final String photoUrl;
  final String name;
  final GCharityGroupApprovalStatus approvalStatus;
  final VoidCallback sendApprovalReq;

  const Group({
    Key? key,
    required this.name,
    required this.photoUrl,
    required this.approvalStatus,
    required this.sendApprovalReq,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GroupLayout(
        name: GroupName(name: name),
        image: GroupAvatar.fromPhotoSrc(photoSrc: photoUrl),
        description: GroupApprovalInfo(approvalStatus: approvalStatus),
        control: GroupSwitch(
          onSwitchOn: sendApprovalReq,
          approvalStatus: approvalStatus,
        ),
      );
}
