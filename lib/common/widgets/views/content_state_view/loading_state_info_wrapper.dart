import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class LoadingStateInfoWrapper extends StatelessWidget {
  final Widget child;

  const LoadingStateInfoWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);
    final extraLargeSpacing = appTheme.spacing.x3lValue;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          // ignore: avoid_redundant_argument_values
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(
              top: appTheme.spacing.mValue,
              left: extraLargeSpacing,
              right: extraLargeSpacing,
            ),
            child: child,
          ),
        ),
      ],
    );
  }
}
