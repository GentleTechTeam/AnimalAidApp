import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/common/dto/content_state_view_entity.dart';
import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/views/content_state_view/content_state_view.dart';
import 'package:animal_aid_app/common/widgets/views/interactive_text.dart';
import 'package:animal_aid_app/post/widgets/views/single_post.dart';
import 'package:animal_aid_app/posts_feed/widgets/post_menu/post_menu.dart';
import 'package:flutter/material.dart' hide RefreshCallback;
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class PostView extends StatelessWidget {
  final LoadingStatus loadingStatus;
  final GPostData_postsFeedItem? post;
  final RefreshCallback onRefresh;
  final void Function(
    GPostData_postsFeedItem post,
  ) onTapPostHeader;
  final InteractiveTextHandler onTapInteractiveText;

  const PostView({
    Key? key,
    required this.loadingStatus,
    required this.post,
    required this.onRefresh,
    required this.onTapPostHeader,
    required this.onTapInteractiveText,
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
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: ContentStateView.entity<GPostData_postsFeedItem>(
          ContentStateViewEntity(
            loadingStatus: loadingStatus,
            emptyDataMessage: context.strings.noDataMessage,
            errorMessage: context.strings.errorMessage,
            data: post,
            builder: (postData) => SinglePost(
              post: postData,
              postMenu: PostMenu(
                groupId: postData.group.id,
                postId: postData.id,
              ),
              onTapPostHeader: () => onTapPostHeader(postData),
              onTapInteractiveText: onTapInteractiveText,
            ),
          ),
        ),
      ),
    );
  }
}
