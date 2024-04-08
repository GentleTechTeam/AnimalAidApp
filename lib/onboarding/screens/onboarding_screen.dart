import 'package:animal_aid_app/onboarding/widgets/onboarding_page.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  static String createRoutePath() => '/onboarding';

  @override
  Widget build(BuildContext context) => const OnboardingPage();
}
