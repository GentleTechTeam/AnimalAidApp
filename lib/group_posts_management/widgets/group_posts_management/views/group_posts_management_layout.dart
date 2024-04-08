import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class GroupPostsManagementLayout extends StatelessWidget {
  final Widget selectionButton;
  final Widget saveButton;
  final Widget posts;

  const GroupPostsManagementLayout({
    Key? key,
    required this.selectionButton,
    required this.saveButton,
    required this.posts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);
    final theme = Theme.of(context);

    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: appTheme.spacing.xsValue),
          decoration: BoxDecoration(
            color: theme.cardColor,
            border: Border(
              bottom: BorderSide(
                width: appTheme.sizes.xsBorderWidth,
                color: theme.primaryColor,
              ),
            ),
          ),
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: [
              selectionButton,
              saveButton,
            ],
          ),
        ),
        Expanded(child: posts),
      ],
    );
  }
}
