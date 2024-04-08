import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class NavigationButtonWithIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback onPress;

  const NavigationButtonWithIcon({
    Key? key,
    required this.icon,
    required this.title,
    this.subtitle,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);
    final theme = Theme.of(context);

    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(appTheme.spacing.xsValue),
        backgroundColor: theme.primaryColorLight,
      ),
      onPressed: onPress,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: appTheme.spacing.mValue),
            child: Icon(
              icon,
              color: theme.primaryColor,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                if (subtitle != null) ...[
                  SizedBox(height: appTheme.spacing.x3sValue),
                  Text(
                    // ignore: avoid-non-null-assertion
                    subtitle!,
                    style: theme.textTheme.caption,
                  ),
                ],
              ],
            ),
          ),
          const Icon(Icons.navigate_next),
        ],
      ),
    );
  }
}
