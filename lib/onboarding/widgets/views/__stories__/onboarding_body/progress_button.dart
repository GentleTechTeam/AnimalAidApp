import 'package:animal_aid_app/onboarding/widgets/views/onboarding_body/progress_button.dart';
import 'package:animal_aid_app/storybook_main.dart';
import 'package:flutter/material.dart';

const storiesSectionName = 'OnboardingProgressButton';

final onboardingProgressButtonStories = [
  SimpleStory(
    section: storiesSectionName,
    name: 'With 25% progress and forward animation',
    child: const _GreyBackgroundContainerForProgressButton(
      child: ProgressButton(
        currentProgressPosition: 0.25,
        iconColor: Colors.red,
        lastProgressPosition: 0.0,
      ),
    ),
  ),
  SimpleStory(
    section: storiesSectionName,
    name: 'With progress 50% and forward animation from 25%',
    child: const _GreyBackgroundContainerForProgressButton(
      child: ProgressButton(
        currentProgressPosition: 0.5,
        iconColor: Colors.red,
        lastProgressPosition: 0.25,
      ),
    ),
  ),
  SimpleStory(
    section: storiesSectionName,
    name: 'With progress 75% and forward animation from 50%',
    child: const _GreyBackgroundContainerForProgressButton(
      child: ProgressButton(
        currentProgressPosition: 0.75,
        iconColor: Colors.red,
        lastProgressPosition: 0.5,
      ),
    ),
  ),
  SimpleStory(
    section: storiesSectionName,
    name: 'With progress 100% and forward animation from 75%',
    child: const _GreyBackgroundContainerForProgressButton(
      child: ProgressButton(
        currentProgressPosition: 1,
        iconColor: Colors.red,
        lastProgressPosition: 0.75,
      ),
    ),
  ),
  SimpleStory(
    section: storiesSectionName,
    name: 'With progress 0% and backward animation from 100%',
    child: const _GreyBackgroundContainerForProgressButton(
      child: ProgressButton(
        currentProgressPosition: 0.0,
        iconColor: Colors.red,
        lastProgressPosition: 100.0,
      ),
    ),
  ),
];

class _GreyBackgroundContainerForProgressButton extends StatelessWidget {
  final Widget child;
  const _GreyBackgroundContainerForProgressButton({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(vertical: 90, horizontal: 20),
        color: Colors.blueGrey,
        child: child,
      );
}
