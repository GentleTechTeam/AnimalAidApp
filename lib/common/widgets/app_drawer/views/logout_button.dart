import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class LogoutButton extends StatelessWidget {
  final VoidCallback onPressed;

  const LogoutButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);
    final accentColor = appTheme.colors.accent;

    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: accentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(
            appTheme.sizes.defaultBorderRadius,
          )),
        ),
      ),
      child: Text(
        context.strings.logout,
        style: TextStyle(color: accentColor),
      ),
    );
  }
}
