import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/widgets/views/navigation_button_with_icon.dart';
import 'package:flutter/material.dart';

class PublicationsButton extends StatelessWidget {
  final VoidCallback onPress;

  const PublicationsButton({
    Key? key,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => NavigationButtonWithIcon(
        icon: Icons.message_outlined,
        title: context.strings.posts,
        onPress: onPress,
      );
}
