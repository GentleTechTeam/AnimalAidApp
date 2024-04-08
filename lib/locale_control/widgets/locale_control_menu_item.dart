import 'package:animal_aid_app/common/constants/supported_locale.dart';
import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/extensions/supported_locale_extension.dart';
import 'package:animal_aid_app/common/state/app_preferences/app_preferences_cubit.dart';
import 'package:animal_aid_app/common/state/app_preferences/app_preferences_state.dart';
import 'package:animal_aid_app/common/widgets/app_menu/views/app_menu_item.dart';
import 'package:animal_aid_app/locale_control/widgets/views/choose_locale_dialog.dart';
import 'package:animal_aid_app/locale_control/widgets/views/locales_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocaleControlMenuItem extends StatelessWidget {
  const LocaleControlMenuItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<AppPreferencesCubit, AppPreferencesState>(
        builder: (context, state) => AppMenuItem(
          title: context.strings.language,
          subtitle: state.savedSupportedLocale.languageName,
          iconData: Icons.language_outlined,
          onPressed: () => _showChooseLocaleDialog(context),
        ),
      );

  void _showChooseLocaleDialog(BuildContext context) {
    final cubit = context.read<AppPreferencesCubit>()..resetCurrentLocale();

    showDialog<void>(
      context: context,
      builder: (context) => ChooseLocaleDialog(
        onSubmit: () => _callAndPopDialog(
          context: context,
          callback: cubit.saveLocale,
        ),
        onCancel: () => _callAndPopDialog(
          context: context,
          callback: cubit.resetCurrentLocale,
        ),
        localesList: LocalesList(
          supportedLocaleValues: SupportedLocale.values,
          currentLocale: cubit.state.currentSupportedLocale,
          onChanged: cubit.chooseLocale,
        ),
      ),
    );
  }

  void _callAndPopDialog({
    required BuildContext context,
    required VoidCallback callback,
  }) {
    callback();
    Navigator.of(context).pop();
  }
}
