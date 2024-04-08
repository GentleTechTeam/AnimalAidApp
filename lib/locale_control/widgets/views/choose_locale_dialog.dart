import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/locale_control/widgets/views/locales_list.dart';
import 'package:flutter/material.dart';

class ChooseLocaleDialog extends StatelessWidget {
  final LocalesList localesList;
  final VoidCallback onSubmit;
  final VoidCallback onCancel;

  const ChooseLocaleDialog({
    Key? key,
    required this.localesList,
    required this.onSubmit,
    required this.onCancel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => AlertDialog(
        title: Text(context.strings.chooseLanguage),
        content: localesList,
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
