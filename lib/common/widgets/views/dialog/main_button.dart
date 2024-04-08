import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const MainButton({
    Key? key,
    required this.label,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);

    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(color: appTheme.colors.primaryForeground),
      ),
    );
  }
}
