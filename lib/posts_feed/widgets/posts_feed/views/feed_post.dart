import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/widgets/views/interactive_text.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_body/post_body.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_body/post_content.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_layout.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_wrapper.dart';
import 'package:animal_aid_app/posts_feed/widgets/posts_feed/views/post_header.dart';
import 'package:flutter/material.dart';

class FeedPost extends StatelessWidget {
  final GPostsFeedData_postsFeed_items post;
  final Widget postMenu;
  final VoidCallback onTapPostHeader;
  final InteractiveTextHandler onTapInteractiveText;

  const FeedPost({
    Key? key,
    required this.post,
    required this.postMenu,
    required this.onTapPostHeader,
    required this.onTapInteractiveText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => PostWrapper(
        removeRounding: true,
        child: PostLayout(
          header: PostHeader(
            onTapPostData: onTapPostHeader,
            groupPhotoSrc: post.group.groupPhotoUrl,
            groupName: post.group.name,
            postDate: post.creationDate,
            postMenu: postMenu,
          ),
          body: PostBody(
            description: PostContent(
              text: post.description ?? '',
              onTapInteractiveText: onTapInteractiveText,
            ),
            photoAttachmentUrls: post.photoAttachmentUrls,
          ),
        ),
      );
}
