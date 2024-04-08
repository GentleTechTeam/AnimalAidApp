import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:built_collection/built_collection.dart';

class PostsFeedState {
  final LoadingStatus loadingStatus;
  final LoadingStatus loadingMoreStatus;
  final BuiltList<GPostsFeedData_postsFeed_items> data;
  final bool hasMoreItemsToLoad;

  const PostsFeedState._({
    required this.loadingStatus,
    required this.loadingMoreStatus,
    required this.data,
    required this.hasMoreItemsToLoad,
  });

  factory PostsFeedState.initial() => PostsFeedState._(
        loadingStatus: LoadingStatus.loading,
        loadingMoreStatus: LoadingStatus.never,
        data: BuiltList(),
        hasMoreItemsToLoad: false,
      );

  PostsFeedState copyWith({
    LoadingStatus? loadingStatus,
    LoadingStatus? loadingMoreStatus,
    BuiltList<GPostsFeedData_postsFeed_items>? data,
    bool? hasMoreItemsToLoad,
  }) =>
      PostsFeedState._(
        loadingStatus: loadingStatus ?? this.loadingStatus,
        loadingMoreStatus: loadingMoreStatus ?? this.loadingMoreStatus,
        data: data ?? this.data,
        hasMoreItemsToLoad: hasMoreItemsToLoad ?? this.hasMoreItemsToLoad,
      );
}
