import 'package:animal_aid_app/common/state/location/location_cubit.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/posts_feed/state/posts_feed/posts_feed_cubit.dart';
import 'package:animal_aid_app/posts_feed/state/posts_feed_with_dynamic_filters/posts_feed_with_dynamic_filters_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsFeedWithFiltersCubitProvider extends StatelessWidget {
  final Widget child;
  final String? tagGroupId;
  final String? tagKey;

  const PostsFeedWithFiltersCubitProvider({
    Key? key,
    required this.child,
    this.tagGroupId,
    this.tagKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locationCubit = BlocProvider.of<LocationCubit>(context);
    final updateDataDebounceDuration =
        AppTheme.watch(context).timing.requestAfterFilterChangeDebounceDuration;

    return BlocProvider<PostsFeedWithDynamicFiltersCubit>(
      create: (_) => PostsFeedWithDynamicFiltersCubit(
        postsFeedCubit: _createPostsFeedCubit(updateDataDebounceDuration),
        locationCubit: locationCubit,
      ),
      child: child,
    );
  }

  PostsFeedCubit _createPostsFeedCubit(Duration updateDataDebounceDuration) =>
      PostsFeedCubit(
        tagGroupId: tagGroupId,
        tagKey: tagKey,
        updateDataDebounceDuration: updateDataDebounceDuration,
      );
}
