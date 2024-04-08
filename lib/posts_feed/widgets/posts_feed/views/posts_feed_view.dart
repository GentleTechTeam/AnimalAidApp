import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/common/constants/widget_keys.dart';
import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/views/content_state_view/content_state_view.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_separator.dart';
import 'package:flutter/material.dart' hide RefreshCallback;
import 'package:lazy_loading_list/lazy_loading_list.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class PostsFeedView extends StatelessWidget {
  final ScrollController scrollController;
  final LoadingStatus loadingStatus;
  final LoadingStatus loadingMoreStatus;
  final Iterable<GPostsFeedData_postsFeed_items> posts;
  final RefreshCallback onRefresh;
  final VoidCallback loadMoreItems;
  final bool hasMoreToLoad;
  final Widget Function(
    BuildContext context,
    GPostsFeedData_postsFeed_items post,
  ) buildPost;

  const PostsFeedView({
    Key? key,
    required this.scrollController,
    required this.loadingStatus,
    required this.loadingMoreStatus,
    required this.posts,
    required this.onRefresh,
    required this.loadMoreItems,
    required this.hasMoreToLoad,
    required this.buildPost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);
    final emptyDataMessage = context.strings.noDataMessage;
    final errorMessage = context.strings.errorMessage;

    return LiquidPullToRefresh(
      springAnimationDurationInMilliseconds:
          appTheme.timing.medium.inMilliseconds,
      height: appTheme.sizes.pullToRefreshHeight,
      animSpeedFactor: appTheme.timing.pullToRefreshAnimationSpeedFactor,
      onRefresh: onRefresh,
      child: posts.isEmpty
          // LiquidPullToRefresh needs list to monitor user scroll.
          ? ListView(
              children: [
                ContentStateView(
                  loadingStatus: loadingStatus,
                  emptyDataMessage: emptyDataMessage,
                  errorMessage: errorMessage,
                  isEmpty: true,
                ),
              ],
            )
          : ContentStateView(
              loadingStatus: loadingStatus,
              emptyDataMessage: emptyDataMessage,
              errorMessage: errorMessage,
              isEmpty: posts.isEmpty,
              builder: (_) {
                final isLoadingMore =
                    loadingMoreStatus == LoadingStatus.loading;

                return ListView.separated(
                  key: WidgetKeys.lazyPostsList,
                  controller: scrollController,
                  separatorBuilder: (_, __) => const PostSeparator(),
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    final isLastItem = posts.length == index + 1;
                    final currentItem = posts.elementAt(index);
                    final postInfo = LazyLoadingList(
                      initialSizeOfItems: posts.length,
                      index: index,
                      child: buildPost(context, currentItem),
                      loadMore: loadMoreItems,
                      hasMore: hasMoreToLoad,
                    );

                    if (isLoadingMore && isLastItem) {
                      return Column(
                        children: [
                          postInfo,
                          Padding(
                            padding: EdgeInsets.all(appTheme.spacing.xsValue),
                            child: const CircularProgressIndicator(),
                          ),
                        ],
                      );
                    }

                    return postInfo;
                  },
                );
              },
            ),
    );
  }
}
