import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class CheckboxControl extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final MaterialTapTargetSize? materialTapTargetSize;

  const CheckboxControl({
    Key? key,
    this.materialTapTargetSize,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);

    return Checkbox(
      materialTapTargetSize: materialTapTargetSize,
      activeColor: Theme.of(context).primaryColor,
      checkColor: appTheme.colors.primaryForeground,
      value: value,
      onChanged: (value) => onChanged(value ?? false),
    );
  }
}
