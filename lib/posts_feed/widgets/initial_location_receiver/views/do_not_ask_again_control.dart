import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/views/checkbox_control.dart';
import 'package:flutter/material.dart';

class DoNotAskAgainControl extends StatelessWidget {
  final ValueChanged<bool> onChanged;
  final bool value;

  const DoNotAskAgainControl({
    Key? key,
    required this.onChanged,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);

    return InkWell(
      onTap: () => onChanged(!value),
      child: Row(
        children: [
          CheckboxControl(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            value: value,
            onChanged: onChanged,
          ),
          SizedBox(width: appTheme.spacing.x2sValue),
          Flexible(
            child: Text(
              context.strings.doNotAskAgain,
              style: Theme.of(context).textTheme.caption,
            ),
          ),
        ],
      ),
    );
  }
}
