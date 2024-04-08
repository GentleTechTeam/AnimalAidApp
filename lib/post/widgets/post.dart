import 'package:animal_aid_app/common/widgets/posts/post_interactive_text_builder.dart';
import 'package:animal_aid_app/post/state/post_cubit.dart';
import 'package:animal_aid_app/post/state/post_state.dart';
import 'package:animal_aid_app/post/widgets/views/post_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocBuilder<PostCubit, PostState>(
        builder: (_, state) => PostInteractiveTextBuilder(
          builder: (_, onTapInteractiveText) => PostView(
            loadingStatus: state.loadingStatus,
            post: state.data,
            onRefresh: () async => context.read<PostCubit>().reloadData(),
            onTapPostHeader: (postData) => _navigateToLink(postData.url),
            onTapInteractiveText: onTapInteractiveText,
          ),
        ),
      );

  void _navigateToLink(String url) => launch(url);
}
