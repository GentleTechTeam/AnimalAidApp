import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/group_posts_management/widgets/group_posts_management/views/post_management_button.dart';
import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SaveButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => PostManagementButton(
        onPressed: onPressed,
        title: context.strings.save,
      );
}
