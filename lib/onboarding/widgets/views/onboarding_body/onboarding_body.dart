import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/onboarding/models/onboarding_page_data.dart';
import 'package:animal_aid_app/onboarding/widgets/views/onboarding_app_bar/custom_onboarding_app_bar.dart';
import 'package:animal_aid_app/onboarding/widgets/views/onboarding_body/onboarding_description.dart';
import 'package:animal_aid_app/onboarding/widgets/views/onboarding_body/onboarding_image.dart';
import 'package:animal_aid_app/onboarding/widgets/views/onboarding_body/onboarding_layout.dart';
import 'package:animal_aid_app/onboarding/widgets/views/onboarding_body/progress_button.dart';
import 'package:flutter/material.dart';

class OnboardingBody extends StatelessWidget {
  final VoidCallback? onNext;
  final VoidCallback? onPrev;
  final VoidCallback? onSkip;
  final double currentProgressPosition;
  final double lastProgressPosition;
  final Color onboardingPageColor;
  final String onboardingImagePath;
  final String onboardingLabel;
  final String onboardingDescription;
  final bool previousPageButtonVisible;

  const OnboardingBody({
    Key? key,
    this.onNext,
    this.onPrev,
    this.onSkip,
    required this.currentProgressPosition,
    required this.lastProgressPosition,
    required this.onboardingPageColor,
    required this.onboardingImagePath,
    required this.onboardingLabel,
    required this.onboardingDescription,
    required this.previousPageButtonVisible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.read(context);

    return Container(
      color: onboardingPageColor,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(appTheme.spacing.sValue),
          child: OnboardingLayout(
            onboardingAppBarButtons: CustomOnboardingAppBar(
              onPrev: onPrev,
              onSkip: onSkip,
              previousPageButtonVisible: previousPageButtonVisible,
            ),
            onboardingImage: OnboardingImage(
              color: appTheme.colors.withWeakOpacity(appTheme.colors.white),
              imagePath: onboardingImagePath.isNotEmpty
                  ? onboardingImagePath
                  : onboardingPagePlaceholderImage,
            ),
            onboardingDescription: OnboardingDescription(
              label: onboardingLabel,
              description: onboardingDescription,
            ),
            onboardingProgressButton: ProgressButton(
              onTap: onNext,
              iconColor: onboardingPageColor,
              currentProgressPosition: currentProgressPosition,
              lastProgressPosition: lastProgressPosition,
            ),
          ),
        ),
      ),
    );
  }
}
