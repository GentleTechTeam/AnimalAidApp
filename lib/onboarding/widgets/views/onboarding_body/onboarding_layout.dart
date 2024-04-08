import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

const _imageFlexFactor = 5;
const _descriptionFlexFactor = 2;

class OnboardingLayout extends StatelessWidget {
  final Widget onboardingAppBarButtons;
  final Widget onboardingImage;
  final Widget onboardingDescription;
  final Widget onboardingProgressButton;

  const OnboardingLayout({
    Key? key,
    required this.onboardingAppBarButtons,
    required this.onboardingImage,
    required this.onboardingDescription,
    required this.onboardingProgressButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final smallSpacing = AppTheme.read(context).spacing.sValue;

    return Column(
      children: [
        Expanded(child: onboardingAppBarButtons),
        Expanded(
          flex: _imageFlexFactor,
          child: onboardingImage,
        ),
        SizedBox(height: smallSpacing),
        Expanded(
          flex: _descriptionFlexFactor,
          child: onboardingDescription,
        ),
        SizedBox(height: smallSpacing),
        Expanded(child: onboardingProgressButton),
      ],
    );
  }
}
