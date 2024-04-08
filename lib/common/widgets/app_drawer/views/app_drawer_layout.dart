import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/app_drawer/views/app_drawer_area.dart';
import 'package:animal_aid_app/common/widgets/app_drawer/views/app_drawer_card.dart';
import 'package:flutter/material.dart';

class AppDrawerLayout extends StatelessWidget {
  final Widget logoView;
  final Widget appInfoView;
  final Widget appMenuView;

  const AppDrawerLayout({
    Key? key,
    required this.logoView,
    required this.appInfoView,
    required this.appMenuView,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);
    final extraLargeSpacing = appTheme.spacing.xlValue;

    return AppDrawerArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: extraLargeSpacing,
              left: extraLargeSpacing,
              right: extraLargeSpacing,
            ),
            height: appTheme.sizes.xlIconSize,
            child: logoView,
          ),
          Expanded(
            child: AppDrawerCard(
              topView: Column(
                children: [
                  appMenuView,
                ],
              ),
              bottomView: appInfoView,
            ),
          ),
        ],
      ),
    );
  }
}
