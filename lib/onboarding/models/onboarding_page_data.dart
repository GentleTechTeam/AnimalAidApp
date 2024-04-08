import 'package:flutter/material.dart';

class OnboardingPageData {
  final String imagePath;
  final String label;
  final String description;
  final Color pageColor;

  const OnboardingPageData({
    required this.imagePath,
    required this.label,
    required this.description,
    required this.pageColor,
  });
}

const onboardingPagePlaceholderImage =
    'assets/images/onboarding/onboarding_placeholder.svg';
