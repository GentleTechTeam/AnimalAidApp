import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class AppMenuLayout extends StatelessWidget {
  final List<Widget> menuItems;

  const AppMenuLayout({
    Key? key,
    required this.menuItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);

    return Padding(
      padding: EdgeInsets.all(appTheme.spacing.xsValue),
      child: Column(
        children: menuItems,
      ),
    );
  }
}
