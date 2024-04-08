import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final bool removeRounding;
  final EdgeInsets padding;
  final EdgeInsets margin;

  const CustomCard({
    Key? key,
    required this.child,
    required this.padding,
    required this.margin,
    this.removeRounding = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);
    final theme = Theme.of(context);

    return Card(
      margin: margin,
      shadowColor: appTheme.colors.withShadowOpacity(theme.shadowColor),
      shape: removeRounding
          ? const RoundedRectangleBorder(
              // ignore: avoid_redundant_argument_values
              borderRadius: BorderRadius.zero,
            )
          : null,
      child: Container(
        padding: padding,
        decoration: !removeRounding
            ? null
            : BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: appTheme.sizes.mBorderWidth,
                    color: appTheme.colors.withWeakestOpacity(
                      theme.dividerColor,
                    ),
                  ),
                ),
              ),
        child: child,
      ),
    );
  }
}
