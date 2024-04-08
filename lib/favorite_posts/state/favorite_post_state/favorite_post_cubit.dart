import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/favorite_posts/state/favorite_post_state/favorite_post_state.dart';
import 'package:animal_aid_app/post/services/post_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class FavoritePostCubit extends Cubit<FavoritePostState> {
  final String groupId;
  final String postId;
  final PostService _postService = GetIt.I<PostService>();

  FavoritePostCubit({
    required this.groupId,
    required this.postId,
  }) : super(FavoritePostState.initial());

  Future<void> getPost() async {
    final postFromApi = await _postService.getData(
      groupId: groupId,
      postId: postId,
    );

    if (postFromApi == null) {
      emit(state.copyWith(loadingStatus: LoadingStatus.error));

      return;
    }

    emit(state.copyWith(
      post: postFromApi,
      loadingStatus: LoadingStatus.done,
    ));
  }
}
