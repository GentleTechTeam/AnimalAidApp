import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color colorA;
  final Color colorB;
  final Text text;

  const GradientButton({
    Key? key,
    required this.onPressed,
    required this.colorA,
    required this.colorB,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);
    final extraSmallSpacing = appTheme.spacing.xsValue;

    return Container(
      margin: EdgeInsets.only(
        top: appTheme.spacing.x2sValue,
        bottom: extraSmallSpacing,
      ),
      padding: EdgeInsets.symmetric(horizontal: extraSmallSpacing),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(
          appTheme.sizes.defaultBorderRadius,
        )),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
          colors: [
            colorA,
            colorB,
          ],
        ),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        onPressed: onPressed,
        child: text,
      ),
    );
  }
}
