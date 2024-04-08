import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/state/app_preferences/app_preferences_cubit.dart';
import 'package:animal_aid_app/common/state/app_preferences/app_preferences_state.dart';
import 'package:animal_aid_app/common/widgets/app_menu/views/app_menu_item.dart';
import 'package:animal_aid_app/theme_control/extensions/theme_mode_extension.dart';
import 'package:animal_aid_app/theme_control/widgets/views/dialogs/choose_theme_dialog.dart';
import 'package:animal_aid_app/theme_control/widgets/views/themes_list/themes_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeControlMenuItem extends StatelessWidget {
  const ThemeControlMenuItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<AppPreferencesCubit, AppPreferencesState>(
        builder: (context, state) => AppMenuItem(
          title: context.strings.theme,
          subtitle: state.savedThemeMode.getThemeModeLabel(context),
          iconData: Icons.brightness_6_outlined,
          onPressed: () => showChooseThemeDialog(context),
        ),
      );

  void showChooseThemeDialog(BuildContext context) {
    final cubit = context.read<AppPreferencesCubit>()..resetCurrentTheme();

    showDialog<void>(
      context: context,
      builder: (context) => ChooseThemeDialog(
        onSubmit: _createDialogCallback(
          context: context,
          callback: cubit.saveTheme,
        ),
        onCancel: _createDialogCallback(
          context: context,
          callback: cubit.resetCurrentTheme,
        ),
        themesList: ThemesList(
          themeModeValues: ThemeMode.values,
          currentThemeMode: cubit.state.currentThemeMode,
          onChanged: cubit.chooseThemeMode,
        ),
      ),
    );
  }

  VoidCallback _createDialogCallback({
    required BuildContext context,
    required VoidCallback callback,
  }) =>
      () {
        callback();
        Navigator.of(context).pop();
      };
}
