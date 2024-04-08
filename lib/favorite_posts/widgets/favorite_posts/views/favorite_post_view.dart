import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/widgets/views/interactive_text.dart';
import 'package:animal_aid_app/favorite_posts/widgets/favorite_posts/views/favorite_post_content_state_view.dart';
import 'package:animal_aid_app/favorite_posts/widgets/favorite_posts/views/favorite_post_wrapper.dart';
import 'package:animal_aid_app/post/widgets/views/single_post.dart';
import 'package:animal_aid_app/posts_feed/widgets/post_menu/post_menu.dart';
import 'package:flutter/material.dart' hide RefreshCallback;

class FavoritePostView extends StatelessWidget {
  final GPostData_postsFeedItem? post;
  final String groupId;
  final String postId;
  final LoadingStatus favoritePostLoadingStatus;
  final bool isFavorite;
  final VoidCallback onTapPostHeader;
  final InteractiveTextHandler onTapInteractiveText;
  final VoidCallback onToggleFavorite;

  const FavoritePostView({
    Key? key,
    required this.post,
    required this.groupId,
    required this.postId,
    required this.favoritePostLoadingStatus,
    required this.isFavorite,
    required this.onTapPostHeader,
    required this.onTapInteractiveText,
    required this.onToggleFavorite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => FavoritePostContentStateView(
        emptyDataMessage: context.strings.emptyFavoritePost,
        loadingStatus: favoritePostLoadingStatus,
        data: post,
        builder: (postData) => FavoritePostWrapper(
          isFavorite: isFavorite,
          child: SinglePost(
            post: postData,
            onTapPostHeader: onTapPostHeader,
            onTapInteractiveText: onTapInteractiveText,
            postMenu: PostMenu(
              groupId: groupId,
              postId: postId,
              onToggleFavorite: onToggleFavorite,
            ),
          ),
        ),
      );
}
