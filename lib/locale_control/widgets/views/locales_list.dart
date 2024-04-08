import 'package:animal_aid_app/common/constants/supported_locale.dart';
import 'package:animal_aid_app/common/extensions/supported_locale_extension.dart';
import 'package:flutter/material.dart';

class LocalesList extends StatelessWidget {
  final List<SupportedLocale> supportedLocaleValues;
  final SupportedLocale currentLocale;
  final void Function(SupportedLocale?) onChanged;

  const LocalesList({
    Key? key,
    required this.supportedLocaleValues,
    required this.currentLocale,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: supportedLocaleValues
            .map((supportedLocale) => RadioListTile<SupportedLocale>(
                  title: Text(supportedLocale.languageName),
                  value: supportedLocale,
                  groupValue: currentLocale,
                  onChanged: onChanged,
                ))
            .toList(),
      );
}
