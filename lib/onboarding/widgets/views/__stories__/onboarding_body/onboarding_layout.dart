import 'package:animal_aid_app/onboarding/widgets/views/onboarding_body/onboarding_layout.dart';
import 'package:animal_aid_app/storybook_main.dart';
import 'package:flutter/material.dart';

const storiesSectionName = 'OnboardingLayout';

final onboardingLayoutStories = [
  SimpleStory(
    section: storiesSectionName,
    name: 'Onboarding markup',
    child: OnboardingLayout(
      onboardingAppBarButtons: Container(
        color: Colors.amber,
        width: double.infinity,
        child: const Text(
          'onboardingAppBarButtons',
          textAlign: TextAlign.center,
        ),
      ),
      onboardingImage: Container(
        color: Colors.red,
        width: double.infinity,
        child: const Text(
          'onboardingImage',
          textAlign: TextAlign.center,
        ),
      ),
      onboardingDescription: Container(
        color: Colors.blue,
        width: double.infinity,
        child: const Text(
          'onboardingDescription',
          textAlign: TextAlign.center,
        ),
      ),
      onboardingProgressButton: Container(
        color: Colors.green,
        width: double.infinity,
        child: const Text(
          'onboardingProgressButton',
          textAlign: TextAlign.center,
        ),
      ),
    ),
  ),
];
