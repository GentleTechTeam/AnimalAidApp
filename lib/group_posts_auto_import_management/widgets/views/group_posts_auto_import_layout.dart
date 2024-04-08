import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class GroupPostsAutoImportLayout extends StatelessWidget {
  final Widget control;
  final Widget hint;

  const GroupPostsAutoImportLayout({
    Key? key,
    required this.control,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(appTheme.spacing.xsValue),
        child: Column(
          children: [
            control,
            hint,
          ],
        ),
      ),
    );
  }
}
