import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/views/custom_card.dart';
import 'package:flutter/material.dart';

class PostWrapper extends StatelessWidget {
  final Widget child;
  final bool removeRounding;

  const PostWrapper({
    Key? key,
    required this.child,
    required this.removeRounding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);

    return CustomCard(
      removeRounding: removeRounding,
      margin: EdgeInsets.zero,
      padding: EdgeInsets.symmetric(vertical: appTheme.spacing.mValue),
      child: child,
    );
  }
}
