import 'package:animal_aid_app/posts_feed/widgets/initial_location_receiver/initial_location_receiver.dart';
import 'package:animal_aid_app/posts_feed/widgets/posts_feed_layout.dart';
import 'package:animal_aid_app/posts_feed/widgets/posts_feed_with_filters_cubit_provider.dart';
import 'package:flutter/material.dart';

class PostsFeedScreen extends StatelessWidget {
  const PostsFeedScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const PostsFeedWithFiltersCubitProvider(
        child: InitialLocationReceiver(
          child: PostsFeedLayout(),
        ),
      );
}
