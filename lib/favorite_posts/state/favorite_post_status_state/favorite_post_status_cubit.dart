import 'package:animal_aid_app/common/dto/post_meta.dart';
import 'package:animal_aid_app/favorite_posts/services/favorite_posts_service.dart';
import 'package:animal_aid_app/favorite_posts/state/favorite_post_status_state/favorite_post_status_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class FavoritePostStatusCubit extends Cubit<FavoritePostStatusState> {
  final String groupId;
  final String postId;
  final FavoritePostsService _favoritePostsService =
      GetIt.I<FavoritePostsService>();

  FavoritePostStatusCubit({
    required this.groupId,
    required this.postId,
  }) : super(FavoritePostStatusState.initial()) {
    _init();
  }

  Future<void> onFavoritePress() async {
    final isPostFavorite = await _favoritePostsService.toggle(
      PostMeta(
        groupId: groupId,
        postId: postId,
      ),
    );

    emit(state.copyWith(
      isFavorite: isPostFavorite,
    ));
  }

  void toggleFavoriteStatus() => emit(state.copyWith(
        isFavorite: !state.isFavorite,
      ));

  Future<void> _init() async {
    final isPostFavorite = await _favoritePostsService.isPostFavorite(PostMeta(
      groupId: groupId,
      postId: postId,
    ));

    emit(state.copyWith(
      isFavorite: isPostFavorite,
    ));
  }
}
