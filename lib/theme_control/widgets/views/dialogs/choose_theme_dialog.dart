import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class ChooseThemeDialog extends StatelessWidget {
  final Widget themesList;
  final VoidCallback? onSubmit;
  final VoidCallback? onCancel;

  const ChooseThemeDialog({
    Key? key,
    required this.themesList,
    this.onSubmit,
    this.onCancel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => AlertDialog(
        title: Text(context.strings.chooseTheme),
        content: themesList,
        actions: [
          TextButton(
            child: Text(context.strings.cancel),
            onPressed: onCancel,
          ),
          TextButton(
            child: Text(context.strings.ok),
            onPressed: onSubmit,
          ),
        ],
      );
}
