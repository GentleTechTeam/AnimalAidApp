import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class PostContentPadding extends StatelessWidget {
  final Widget child;

  const PostContentPadding({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: appTheme.spacing.mValue),
      child: child,
    );
  }
}
