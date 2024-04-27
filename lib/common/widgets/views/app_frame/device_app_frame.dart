import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart' as storybook;

// ignore: prefer-match-file-name
class AppFrame extends StatelessWidget {
  final Widget child;

  const AppFrame({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.watch(context);

    return Padding(
      padding: EdgeInsets.all(theme.spacing.xlValue),
      child: storybook.DeviceFrame(
        device: storybook.Devices.ios.iPhone13,
        screen: child,
      ),
    );
  }
}
