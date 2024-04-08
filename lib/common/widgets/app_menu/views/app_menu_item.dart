import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class AppMenuItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData iconData;
  final VoidCallback onPressed;

  const AppMenuItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.iconData,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);
    final theme = Theme.of(context);

    final mediumSpacing = appTheme.spacing.mValue;

    return Padding(
      padding: EdgeInsets.only(bottom: appTheme.spacing.minValue),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.only(
            top: mediumSpacing,
            bottom: mediumSpacing,
            right: appTheme.spacing.xsValue,
            left: appTheme.spacing.x3lValue,
          ),
          color: appTheme.colors.withWeakestOpacity(theme.primaryColor),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: appTheme.spacing.x2lValue),
                child: Icon(
                  iconData,
                  size: appTheme.sizes.mIconSize,
                  color: theme.colorScheme.secondary,
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: theme.textTheme.subtitle2,
                    ),
                    SizedBox(height: appTheme.spacing.x2sValue),
                    Text(
                      subtitle,
                      style: theme.textTheme.caption,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
