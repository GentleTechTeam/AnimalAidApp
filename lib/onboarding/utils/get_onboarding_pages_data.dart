import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/onboarding/models/onboarding_page_data.dart';
import 'package:flutter/material.dart';

List<OnboardingPageData> getOnboardingPagesData(BuildContext context) => [
      OnboardingPageData(
        imagePath: 'assets/images/onboarding/onboarding_1.svg',
        label: context.strings.animalAidApp,
        description: context.strings.welcomeMessage,
        pageColor: const Color(0xFF5FB985),
      ),
      OnboardingPageData(
        imagePath: 'assets/images/onboarding/onboarding_2.svg',
        label: context.strings.beFirstToKnow,
        description: context.strings.dataOnSheltersMessage,
        pageColor: const Color(0xFF367465),
      ),
      OnboardingPageData(
        imagePath: 'assets/images/onboarding/onboarding_3.svg',
        label: context.strings.convenientFilter,
        description: context.strings.infoAboutSheltersMessage,
        pageColor: const Color(0xFF6887F4),
      ),
    ];
