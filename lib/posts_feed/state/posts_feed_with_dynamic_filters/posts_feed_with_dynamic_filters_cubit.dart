import 'dart:async';

import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/common/state/location/location_cubit.dart';
import 'package:animal_aid_app/common/state/location/location_state.dart';
import 'package:animal_aid_app/posts_feed/state/posts_feed/posts_feed_cubit.dart';
import 'package:animal_aid_app/posts_feed/state/posts_feed/posts_feed_state.dart';
import 'package:animal_aid_app/posts_feed/state/posts_feed/request_page_payload.dart';
import 'package:animal_aid_app/posts_feed/state/posts_feed_with_dynamic_filters/utils/extract_location_key.dart';
import 'package:animal_aid_app/posts_feed/state/posts_feed_with_dynamic_filters/utils/is_location_filter_changed.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class PostsFeedWithDynamicFiltersCubit extends Cubit<PostsFeedState> {
  final PostsFeedCubit postsFeedCubit;
  final LocationCubit locationCubit;
  final List<StreamSubscription> subscriptions = [];

  PostsFeedWithDynamicFiltersCubit({
    required this.postsFeedCubit,
    required this.locationCubit,
  }) : super(postsFeedCubit.state) {
    if (locationCubit.state.initialized) {
      postsFeedCubit.requestPage(RequestPagePayload(
        reload: true,
        locationKey: _collectLocationKey(),
      ));
    }

    final locationCubitSubscription = locationCubit.stream
        .startWith(LocationState.empty())
        .pairwise()
        .where((stateWithNextState) {
      final state = stateWithNextState.first;
      final nextState = stateWithNextState.elementAt(1);

      return isLocationFilterChanged(state, nextState) || nextState.initialized;
    }).listen(
      (stateWithNextState) => postsFeedCubit.requestPage(RequestPagePayload(
        reload: true,
        locationKey: _collectLocationKey(),
      )),
    );

    final postsFeedCubitSubscription = postsFeedCubit.stream.listen(emit);

    subscriptions.addAll([
      locationCubitSubscription,
      postsFeedCubitSubscription,
    ]);
  }

  Future<void> reloadData() {
    postsFeedCubit.requestPage(RequestPagePayload(
      reload: true,
      locationKey: _collectLocationKey(),
    ));

    return postsFeedCubit.stream.firstWhere(
      (state) => state.loadingStatus != LoadingStatus.loading,
    );
  }

  void loadMore() => postsFeedCubit.requestPage(RequestPagePayload(
        reload: false,
        locationKey: _collectLocationKey(),
      ));

  @override
  Future<void> close() {
    for (final sub in subscriptions) {
      sub.cancel();
    }

    return super.close();
  }

  String? _collectLocationKey() => extractLocationKey(locationCubit.state);
}
