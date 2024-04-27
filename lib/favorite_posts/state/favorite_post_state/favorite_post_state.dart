import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/constants/loading_status.dart';

class FavoritePostState {
  final GPostData_postsFeedItem? post;
  final LoadingStatus loadingStatus;

  FavoritePostState({
    required this.loadingStatus,
    this.post,
  });

  factory FavoritePostState.initial() => FavoritePostState(
        loadingStatus: LoadingStatus.loading,
      );

  FavoritePostState copyWith({
    GPostData_postsFeedItem? post,
    LoadingStatus? loadingStatus,
  }) =>
      FavoritePostState(
        post: post ?? this.post,
        loadingStatus: loadingStatus ?? this.loadingStatus,
      );
}
