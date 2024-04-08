import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_content_padding.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_photos/post_photos.dart';
import 'package:flutter/material.dart';

class PostBody extends StatelessWidget {
  final Widget description;
  final Iterable<String> photoAttachmentUrls;

  const PostBody({
    Key? key,
    required this.description,
    required this.photoAttachmentUrls,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        PostContentPadding(child: description),
        if (photoAttachmentUrls.isNotEmpty)
          Padding(
            padding: EdgeInsets.only(top: appTheme.spacing.xsValue),
            child: PostPhotos(imageUrls: photoAttachmentUrls),
          ),
      ],
    );
  }
}
