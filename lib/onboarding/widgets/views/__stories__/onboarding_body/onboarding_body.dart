import 'package:animal_aid_app/onboarding/widgets/views/onboarding_body/onboarding_body.dart';
import 'package:animal_aid_app/storybook_main.dart';
import 'package:flutter/material.dart';

const storiesSectionName = 'OnboardingBody';

final onboardingBodyStories = [
  SimpleStory(
    section: storiesSectionName,
    name: 'With filled app bar, image, description, progress button',
    child: const OnboardingBody(
      previousPageButtonVisible: true,
      lastProgressPosition: 0.0,
      currentProgressPosition: 25.0,
      onboardingPageColor: Color(0xFF5FB985),
      onboardingLabel: 'Animal Aid App',
      onboardingDescription:
          'We are glad to welcome you to the animal shelter assistance platform',
      onboardingImagePath: 'assets/images/onboarding/onboarding_1.svg',
    ),
  ),
];
