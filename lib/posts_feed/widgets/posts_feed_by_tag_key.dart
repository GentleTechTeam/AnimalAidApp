import 'package:animal_aid_app/posts_feed/widgets/posts_feed/posts_feed.dart';
import 'package:animal_aid_app/posts_feed/widgets/posts_feed_with_filters_cubit_provider.dart';
import 'package:flutter/material.dart';

class PostsFeedByTagKey extends StatelessWidget {
  final String tagKey;

  const PostsFeedByTagKey({
    Key? key,
    required this.tagKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(tagKey),
          centerTitle: true,
        ),
        body: PostsFeedWithFiltersCubitProvider(
          tagKey: tagKey,
          child: PostsFeed.withDefaultParams(),
        ),
      );
}
