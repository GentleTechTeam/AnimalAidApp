import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class PostSeparator extends StatelessWidget {
  const PostSeparator({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);

    return SizedBox(height: appTheme.spacing.sValue);
  }
}
