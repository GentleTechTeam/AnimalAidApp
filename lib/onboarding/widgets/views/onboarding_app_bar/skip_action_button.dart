import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/views/touchable_opacity.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SkipActionButton extends StatelessWidget {
  final VoidCallback? onTap;

  const SkipActionButton({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.read(context);

    return TouchableOpacity(
      onTap: onTap,
      child: AutoSizeText(
        context.strings.skip,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
              color: appTheme.colors.white,
            ),
      ),
    );
  }
}
