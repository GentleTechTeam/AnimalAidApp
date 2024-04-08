import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/views/icon_info.dart';
import 'package:flutter/material.dart';

class UpdateAppView extends StatelessWidget {
  final VoidCallback onUpdateButtonPressed;

  const UpdateAppView({
    Key? key,
    required this.onUpdateButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        IconInfo(
          text: context.strings.outdatedVersionMessage,
          icon: Icons.update_outlined,
        ),
        SizedBox(height: appTheme.spacing.mValue),
        Center(
          child: OutlinedButton(
            onPressed: onUpdateButtonPressed,
            child: Text(context.strings.jumpToTheUpdate),
          ),
        ),
      ],
    );
  }
}
