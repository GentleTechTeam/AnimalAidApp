import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/views/touchable_opacity.dart';
import 'package:flutter/material.dart';

class PreviousPageButton extends StatelessWidget {
  final VoidCallback? onTap;

  const PreviousPageButton({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.read(context);

    return TouchableOpacity(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(appTheme.spacing.x2sValue),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: appTheme.colors.withShadowOpacity(appTheme.colors.black),
        ),
        child: Icon(
          Icons.arrow_back_ios_outlined,
          color: appTheme.colors.white,
        ),
      ),
    );
  }
}
