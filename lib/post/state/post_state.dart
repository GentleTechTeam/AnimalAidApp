import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/constants/loading_status.dart';

class PostState {
  final LoadingStatus loadingStatus;
  final GPostData_postsFeedItem? data;

  PostState._({
    required this.loadingStatus,
    this.data,
  });

  factory PostState.initial() => PostState._(
        loadingStatus: LoadingStatus.loading,
      );

  PostState copyWith({
    LoadingStatus? loadingStatus,
    GPostData_postsFeedItem? data,
  }) =>
      PostState._(
        loadingStatus: loadingStatus ?? this.loadingStatus,
        data: data ?? this.data,
      );
}
