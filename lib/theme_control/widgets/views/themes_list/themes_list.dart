import 'package:animal_aid_app/theme_control/extensions/theme_mode_extension.dart';
import 'package:flutter/material.dart';

typedef _OnChangedCallback = void Function(ThemeMode? themeMode);

class ThemesList extends StatelessWidget {
  final _OnChangedCallback? onChanged;
  final List<ThemeMode> themeModeValues;
  final ThemeMode currentThemeMode;

  const ThemesList({
    Key? key,
    this.onChanged,
    required this.themeModeValues,
    required this.currentThemeMode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: themeModeValues
            .map(
              (themeModeValue) => RadioListTile<ThemeMode>(
                title: Text(
                  themeModeValue.getThemeModeLabel(context),
                ),
                value: themeModeValue,
                groupValue: currentThemeMode,
                onChanged: onChanged,
              ),
            )
            .toList(),
      );
}
