import 'package:flutter/material.dart';

abstract class WidgetKeys {
  static const postsFeedLocationControl = Key('postsFeedLocationControl');
  static const postsFeedLocationControlMinimizer = Key(
    'postsFeedLocationControlMinimizer',
  );

  static const postMenuButton = Key('postMenuButton');

  static const firstAppMenuItem = Key('firstAppMenuItem');

  static const postFeedTabsContent = Key('tabs');

  static const lazyPostsList = Key('lazy_list');

  static const onboardingProgressButton = Key('onboarding_progress_button');

  static const shelterPostsAppBar = Key('shelter_posts_app_bar');

  static const locationsSearchButtonSearchIcon = Key('locations_search_icon');
  static const locationsSearchButtonCloseIcon = Key('locations_close_icon');
}
