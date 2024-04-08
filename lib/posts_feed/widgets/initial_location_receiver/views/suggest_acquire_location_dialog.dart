import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/views/dialog/dialog_base.dart';
import 'package:animal_aid_app/common/widgets/views/dialog/main_button.dart';
import 'package:animal_aid_app/common/widgets/views/dialog/secondary_button.dart';
import 'package:animal_aid_app/posts_feed/widgets/initial_location_receiver/views/do_not_ask_again_control.dart';
import 'package:flutter/material.dart';

class SuggestAcquireLocationDialog extends StatelessWidget {
  final VoidCallback onDisagree;
  final VoidCallback onAgree;
  final bool doNotAskAgainDecision;
  final ValueChanged<bool> onDoNotAskAgainChanged;

  const SuggestAcquireLocationDialog({
    Key? key,
    required this.onDisagree,
    required this.onAgree,
    required this.doNotAskAgainDecision,
    required this.onDoNotAskAgainChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);
    final xlIconSize = appTheme.sizes.xlIconSize;

    return DialogBase(
      title: context.strings.improvementOfTheFeed,
      description: context.strings.postsByLocalityMessage,
      image: Container(
        width: xlIconSize,
        height: xlIconSize,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.fromBorderSide(
            BorderSide(
              width: appTheme.sizes.xlBorderWidth,
              color: Theme.of(context).cardColor,
            ),
          ),
          color: appTheme.colors.black,
          image: const DecorationImage(
            image: AssetImage('assets/images/flat_map.png'),
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
      buttons: [
        DoNotAskAgainControl(
          onChanged: onDoNotAskAgainChanged,
          value: doNotAskAgainDecision,
        ),
        SizedBox(height: appTheme.spacing.x2sValue),
        MainButton(label: context.strings.ok, onPressed: onAgree),
        SecondaryButton(
          label: context.strings.noThankYou,
          onPressed: onDisagree,
        ),
      ],
    );
  }
}
