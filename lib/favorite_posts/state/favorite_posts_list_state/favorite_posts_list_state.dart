import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/common/dto/post_meta.dart';

class FavoritePostsListState {
  final List<PostMeta> favoritePosts;
  final LoadingStatus loadingStatus;

  FavoritePostsListState({
    required this.favoritePosts,
    required this.loadingStatus,
  });

  factory FavoritePostsListState.initial() => FavoritePostsListState(
        favoritePosts: List.empty(),
        loadingStatus: LoadingStatus.loading,
      );

  FavoritePostsListState copyWith({
    List<PostMeta>? favoritePosts,
    LoadingStatus? loadingStatus,
  }) =>
      FavoritePostsListState(
        favoritePosts: favoritePosts ?? this.favoritePosts,
        loadingStatus: loadingStatus ?? this.loadingStatus,
      );
}
