import 'package:animal_aid_app/posts_feed/utils/widget_with_exposed_scroll_controller.dart';
import 'package:animal_aid_app/posts_feed/widgets/posts_feed/posts_feed.dart';
import 'package:animal_aid_app/posts_feed/widgets/posts_feed_with_filters_cubit_provider.dart';
import 'package:flutter/material.dart';

class PostsFeedByTag extends StatelessWidget
    implements WidgetWithExposedScrollController {
  @override
  final scrollController = ScrollController();
  final String tagGroupId;

  PostsFeedByTag({
    Key? key,
    required this.tagGroupId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => PostsFeedWithFiltersCubitProvider(
        child: PostsFeed(scrollController: scrollController),
        tagGroupId: tagGroupId,
      );
}
