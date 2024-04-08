import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class AppDrawerCard extends StatelessWidget {
  final Widget topView;
  final Widget bottomView;

  const AppDrawerCard({
    Key? key,
    required this.topView,
    required this.bottomView,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);
    final smallSpacing = appTheme.spacing.sValue;

    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          topView,
          bottomView,
        ],
      ),
      color: appTheme.colors.withStrongOpacity(Theme.of(context).cardColor),
      elevation: 0,
      margin: EdgeInsets.only(
        top: appTheme.spacing.x2lValue,
        bottom: smallSpacing,
        left: smallSpacing,
        right: smallSpacing,
      ),
    );
  }
}
