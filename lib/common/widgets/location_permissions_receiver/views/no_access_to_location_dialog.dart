import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/views/dialog/dialog_base.dart';
import 'package:animal_aid_app/common/widgets/views/dialog/main_button.dart';
import 'package:animal_aid_app/common/widgets/views/dialog/secondary_button.dart';
import 'package:flutter/material.dart';

class NoAccessToLocationDialog extends StatelessWidget {
  final VoidCallback onGoToSettings;
  final VoidCallback onContinue;

  const NoAccessToLocationDialog({
    Key? key,
    required this.onGoToSettings,
    required this.onContinue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.read(context);

    return DialogBase(
      image: Icon(
        Icons.location_off,
        color: Theme.of(context).textTheme.caption?.color,
        size: appTheme.sizes.lIconSize,
      ),
      title: context.strings.geolocationUnavailable,
      description: context.strings.enableAccessInSettings,
      buttons: [
        MainButton(
          label: context.strings.openSettings,
          onPressed: onGoToSettings,
        ),
        SecondaryButton(
          label: context.strings.continueMessage,
          onPressed: onContinue,
        ),
      ],
    );
  }
}
