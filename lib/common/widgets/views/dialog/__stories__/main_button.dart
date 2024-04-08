import 'package:animal_aid_app/common/widgets/views/dialog/main_button.dart';
import 'package:animal_aid_app/storybook_main.dart';
import 'package:flutter/material.dart';

const storiesSectionName = 'Main dialog button';

final mainButtonStories = [
  SimpleStory(
    section: storiesSectionName,
    name: 'default story',
    child: _DefaultStory(),
  ),
];

class _DefaultStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const MainButton(label: 'Some');
}
