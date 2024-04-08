import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/views/custom_card.dart';
import 'package:flutter/material.dart';

class ManageableGroupLayout extends StatelessWidget {
  final Widget groupData;
  final List<Widget> controls;

  const ManageableGroupLayout({
    Key? key,
    required this.groupData,
    required this.controls,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);
    final extraSmallSpacing = appTheme.spacing.xsValue;

    return CustomCard(
      margin: EdgeInsets.symmetric(
        horizontal: appTheme.spacing.mValue,
        vertical: extraSmallSpacing,
      ),
      padding: EdgeInsets.symmetric(vertical: extraSmallSpacing),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: extraSmallSpacing),
            child: groupData,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: appTheme.spacing.x2lValue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: controls
                  .map((controlWidget) => Padding(
                        padding: EdgeInsets.only(
                          bottom: appTheme.spacing.x3sValue,
                        ),
                        child: controlWidget,
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
