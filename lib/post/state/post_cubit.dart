import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/post/services/post_service.dart';
import 'package:animal_aid_app/post/state/post_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class PostCubit extends Cubit<PostState> {
  final String groupId;
  final String postId;
  final PostService _postService = GetIt.I<PostService>();

  PostCubit({
    required this.groupId,
    required this.postId,
  }) : super(PostState.initial()) {
    _getPostData();
  }

  void reloadData() {
    emit(PostState.initial());

    _getPostData();
  }

  Future<void> _getPostData() async {
    final result = await _postService.getData(
      groupId: groupId,
      postId: postId,
    );

    if (result == null) {
      emit(state.copyWith(
        loadingStatus: LoadingStatus.error,
      ));

      return;
    }

    emit(state.copyWith(
      loadingStatus: LoadingStatus.done,
      data: result,
    ));
  }
}
