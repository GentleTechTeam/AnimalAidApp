import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_body/post_body.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_body/post_content.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_date.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_layout.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_wrapper.dart';
import 'package:flutter/material.dart';

class GroupPost extends StatelessWidget {
  final GGroupPostsData_groupPosts_items post;
  final Widget footer;

  const GroupPost({
    Key? key,
    required this.post,
    required this.footer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);

    return Padding(
      padding: EdgeInsets.all(appTheme.spacing.xsValue),
      child: PostWrapper(
        removeRounding: false,
        child: PostLayout(
          header: PostDate(date: post.creationDate),
          body: PostBody(
            description: PostContent(text: post.description ?? ''),
            photoAttachmentUrls: post.photoAttachmentUrls,
          ),
          footer: footer,
        ),
      ),
    );
  }
}
