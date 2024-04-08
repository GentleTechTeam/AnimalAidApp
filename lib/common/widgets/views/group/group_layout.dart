import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class GroupLayout extends StatelessWidget {
  final Widget name;
  final Widget image;
  final Widget? description;
  final Widget? control;

  const GroupLayout({
    Key? key,
    required this.name,
    required this.image,
    this.description,
    this.control,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);
    final extraSmallSpacing = appTheme.spacing.xsValue;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: extraSmallSpacing,
            left: appTheme.spacing.x2lValue,
            right: extraSmallSpacing,
          ),
          child: Row(
            children: [
              image,
              Expanded(
                flex: appTheme.sizes.groupBodyFlexValue,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: appTheme.spacing.sValue,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: appTheme.spacing.x2sValue,
                        ),
                        child: name,
                      ),
                      // ignore: avoid-non-null-assertion
                      if (description != null) description!,
                    ],
                  ),
                ),
              ),
              // ignore: avoid-non-null-assertion
              if (control != null) control!,
            ],
          ),
        ),
      ],
    );
  }
}
