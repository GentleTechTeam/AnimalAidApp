import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyButton extends StatelessWidget {
  final VoidCallback onPressed;

  const PrivacyPolicyButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);
    final extraSmallSpacing = appTheme.spacing.x2sValue;
    final textCaptionStyle = Theme.of(context).textTheme.caption;

    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: extraSmallSpacing,
          horizontal: appTheme.spacing.xsValue,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                context.strings.privacyPolicy,
                style: textCaptionStyle,
              ),
            ),
            SizedBox(width: extraSmallSpacing),
            Icon(
              Icons.open_in_new_outlined,
              size: appTheme.sizes.sIconSize,
              color: textCaptionStyle?.color,
            ),
          ],
        ),
      ),
    );
  }
}
