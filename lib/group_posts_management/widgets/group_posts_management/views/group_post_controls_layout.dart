import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class GroupPostControlsLayout extends StatelessWidget {
  final Widget post;
  final Widget control;

  const GroupPostControlsLayout({
    Key? key,
    required this.post,
    required this.control,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);

    return Row(
      children: [
        Expanded(child: post),
        Container(
          padding: EdgeInsets.only(right: appTheme.spacing.mValue),
          child: control,
        ),
      ],
    );
  }
}
