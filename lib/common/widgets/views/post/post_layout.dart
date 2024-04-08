import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_content_padding.dart';
import 'package:flutter/material.dart';

class PostLayout extends StatelessWidget {
  final Widget header;
  final Widget body;
  final Widget? footer;

  const PostLayout({
    Key? key,
    required this.header,
    required this.body,
    this.footer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);
    final extraSmallSpacing = appTheme.spacing.xsValue;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PostContentPadding(child: header),
        SizedBox(height: extraSmallSpacing),
        body,
        if (footer != null) ...[
          const Divider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: extraSmallSpacing),
            child: footer,
          ),
        ],
      ],
    );
  }
}
