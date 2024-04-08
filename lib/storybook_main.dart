import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/views/content_state_view/__stories__/content_state_view.dart';
import 'package:animal_aid_app/common/widgets/views/dialog/__stories__/main_button.dart';
import 'package:animal_aid_app/common/widgets/views/dialog/__stories__/secondary_button.dart';
import 'package:animal_aid_app/common/widgets/views/toggleable_items/__stories__/toggleable_items.dart';
import 'package:animal_aid_app/onboarding/widgets/views/__stories__/onboarding_body/onboarding_layout.dart';
import 'package:animal_aid_app/onboarding/widgets/views/__stories__/onboarding_body/progress_button.dart';
import 'package:animal_aid_app/posts_feed/widgets/posts_feed_location_control/views/__stories__/list_location_control.dart';
import 'package:animal_aid_app/theme_control/widgets/views/__stories__/choose_theme_dialog.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart' as storybook;

import 'onboarding/widgets/views/__stories__/onboarding_body/onboarding_body.dart';

void main() => runApp(const StorybookApp());

// ignore: prefer-match-file-name
class StorybookApp extends StatelessWidget {
  const StorybookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => AppTheme.initProvider(
        themeMode: ThemeMode.system,
        builder: (BuildContext context) => storybook.Storybook(
          stories: [
            ...contentStateViewStories,
            ...toggleableItemsStories,
            ...listLocationControlStories,
            ...mainButtonStories,
            ...secondaryButtonStories,
            ...chooseThemeDialog,
            ...onboardingLayoutStories,
            ...onboardingProgressButtonStories,
            ...onboardingBodyStories,
          ],
        ),
      );
}

// Intended to allow not unique story names for different sections.
class SimpleStory extends storybook.Story {
  SimpleStory({
    required Widget child,
    required String name,
    required String section,
  }) : super(
          builder: (_) => child,
          name: section + name,
        );
}
