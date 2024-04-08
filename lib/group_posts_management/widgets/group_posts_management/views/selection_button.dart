import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/group_posts_management/widgets/group_posts_management/views/post_management_button.dart';
import 'package:flutter/material.dart';

class SelectionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool inverseTitle;

  const SelectionButton({
    Key? key,
    required this.onPressed,
    required this.inverseTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => PostManagementButton(
        onPressed: onPressed,
        title: inverseTitle
            ? context.strings.unselectEverything
            : context.strings.selectEverything,
      );
}
