import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/post/state/post_cubit.dart';
import 'package:animal_aid_app/post/widgets/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostScreen extends StatelessWidget {
  final String groupId;
  final String postId;

  static const groupParamName = 'groupId';
  static const postParamName = 'postId';

  static const _routeBasePath = '/post/';

  const PostScreen({
    Key? key,
    required this.groupId,
    required this.postId,
  }) : super(key: key);

  static String createNavigationPath({
    required String groupId,
    required String postId,
  }) =>
      '$_routeBasePath$groupId/$postId';

  static String createRoutePath() =>
      '$_routeBasePath:$groupParamName/:$postParamName';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(context.strings.post),
        ),
        body: BlocProvider(
          create: (_) => PostCubit(
            groupId: groupId,
            postId: postId,
          ),
          child: const Post(),
        ),
      );
}
