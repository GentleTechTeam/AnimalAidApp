import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/common/dto/post_meta.dart';
import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/views/content_state_view/content_state_view.dart';
import 'package:flutter/material.dart' hide RefreshCallback;
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class FavoritePostsView extends StatelessWidget {
  final Widget child;
  final LoadingStatus loadingStatus;
  final List<PostMeta> favoritePosts;
  final RefreshCallback onRefresh;

  const FavoritePostsView({
    Key? key,
    required this.child,
    required this.loadingStatus,
    required this.favoritePosts,
    required this.onRefresh,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);

    return LiquidPullToRefresh(
      springAnimationDurationInMilliseconds:
          appTheme.timing.medium.inMilliseconds,
      height: appTheme.sizes.pullToRefreshHeight,
      animSpeedFactor: appTheme.timing.pullToRefreshAnimationSpeedFactor,
      onRefresh: onRefresh,
      child: favoritePosts.isEmpty
          ? ContentStateView(
              loadingStatus: loadingStatus,
              emptyDataMessage: context.strings.emptyFavoritePostsList,
              errorMessage: context.strings.errorMessage,
              isEmpty: favoritePosts.isEmpty,
            )
          : child,
    );
  }
}
