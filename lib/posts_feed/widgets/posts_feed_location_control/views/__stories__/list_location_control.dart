import 'package:animal_aid_app/posts_feed/widgets/posts_feed_location_control/views/list_location_control.dart';
import 'package:animal_aid_app/storybook_main.dart';
import 'package:flutter/material.dart';

const storiesSectionName = 'ListLocationControl';

final listLocationControlStories = [
  SimpleStory(
    section: storiesSectionName,
    name: 'With active location story',
    child: ButtonBackgroundWithContent(
      child: _WithActiveLocationStory(),
    ),
  ),
  SimpleStory(
    section: storiesSectionName,
    name: 'With empty location story',
    child: ButtonBackgroundWithContent(
      child: _WithEmptyLocationStory(),
    ),
  ),
];

class _WithActiveLocationStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const ListLocationControl(
        locationLabel: 'Some',
        isEmpty: false,
      );
}

class _WithEmptyLocationStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const ListLocationControl(
        locationLabel: 'Not selected',
        isEmpty: true,
      );
}

class ButtonBackgroundWithContent extends StatelessWidget {
  final Widget child;

  const ButtonBackgroundWithContent({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          ),
          Positioned.fill(
            child: Center(
              child: child,
            ),
          ),
        ],
      );
}
