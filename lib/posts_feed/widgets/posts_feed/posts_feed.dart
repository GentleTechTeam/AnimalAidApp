import 'package:animal_aid_app/common/services/navigator_service.dart';
import 'package:animal_aid_app/common/widgets/posts/post_interactive_text_builder.dart';
import 'package:animal_aid_app/posts_feed/state/posts_feed/posts_feed_state.dart';
import 'package:animal_aid_app/posts_feed/state/posts_feed_with_dynamic_filters/posts_feed_with_dynamic_filters_cubit.dart';
import 'package:animal_aid_app/posts_feed/utils/widget_with_exposed_scroll_controller.dart';
import 'package:animal_aid_app/posts_feed/widgets/post_menu/post_menu.dart';
import 'package:animal_aid_app/posts_feed/widgets/posts_feed/views/feed_post.dart';
import 'package:animal_aid_app/posts_feed/widgets/posts_feed/views/posts_feed_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class PostsFeed extends StatelessWidget
    implements WidgetWithExposedScrollController {
  @override
  final ScrollController scrollController;

  final _navigatorService = GetIt.I<NavigatorService>();

  PostsFeed({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  factory PostsFeed.withDefaultParams() => PostsFeed(
        scrollController: ScrollController(),
      );

  @override
  Widget build(BuildContext context) {
    final postsFeedWithDynamicFiltersCubit =
        BlocProvider.of<PostsFeedWithDynamicFiltersCubit>(context);

    return BlocBuilder<PostsFeedWithDynamicFiltersCubit, PostsFeedState>(
      builder: (_, state) => PostInteractiveTextBuilder(
        builder: (_, onTapInteractiveText) => PostsFeedView(
          scrollController: scrollController,
          loadingStatus: state.loadingStatus,
          loadingMoreStatus: state.loadingMoreStatus,
          posts: state.data.asList(),
          onRefresh: postsFeedWithDynamicFiltersCubit.reloadData,
          loadMoreItems: postsFeedWithDynamicFiltersCubit.loadMore,
          hasMoreToLoad: state.hasMoreItemsToLoad,
          buildPost: (context, post) => FeedPost(
            post: post,
            onTapPostHeader: () => _navigatorService.navigateToPostScreen(
              context: context,
              groupId: post.group.id,
              postId: post.id,
            ),
            postMenu: PostMenu(
              groupId: post.group.id,
              postId: post.id,
            ),
            onTapInteractiveText: onTapInteractiveText,
          ),
        ),
      ),
    );
  }
}
