import 'package:animal_aid_app/onboarding/widgets/views/onboarding_app_bar/previous_page_button.dart';
import 'package:animal_aid_app/onboarding/widgets/views/onboarding_app_bar/skip_action_button.dart';
import 'package:flutter/material.dart';

class CustomOnboardingAppBar extends StatelessWidget {
  final bool previousPageButtonVisible;
  final VoidCallback? onPrev;
  final VoidCallback? onSkip;

  const CustomOnboardingAppBar({
    Key? key,
    required this.previousPageButtonVisible,
    this.onPrev,
    this.onSkip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (previousPageButtonVisible)
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: PreviousPageButton(onTap: onPrev),
              ),
            ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: SkipActionButton(onTap: onSkip),
            ),
          ),
        ],
      );
}
