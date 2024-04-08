import 'package:animal_aid_app/storybook_main.dart';
import 'package:animal_aid_app/theme_control/widgets/views/dialogs/choose_theme_dialog.dart';
import 'package:animal_aid_app/theme_control/widgets/views/themes_list/themes_list.dart';
import 'package:flutter/material.dart';

const _storiesSectionName = 'Theme control';

final chooseThemeDialog = [
  SimpleStory(
    section: _storiesSectionName,
    name: 'Choose theme dialog',
    child: _DefaultStory(),
  ),
];

class _DefaultStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const ChooseThemeDialog(
        themesList: ThemesList(
          themeModeValues: ThemeMode.values,
          currentThemeMode: ThemeMode.system,
        ),
      );
}
