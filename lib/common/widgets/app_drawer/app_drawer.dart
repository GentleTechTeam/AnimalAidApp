import 'package:animal_aid_app/common/widgets/app_drawer/views/app_drawer_layout.dart';
import 'package:animal_aid_app/common/widgets/app_info/app_info.dart';
import 'package:animal_aid_app/common/widgets/app_menu/app_menu.dart';
import 'package:animal_aid_app/common/widgets/views/app_logo.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: AppDrawerLayout(
          logoView: const AppLogo(),
          appMenuView: AppMenu(),
          appInfoView: const AppInfo(),
        ),
      );
}
