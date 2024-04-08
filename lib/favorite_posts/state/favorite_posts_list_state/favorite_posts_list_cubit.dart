import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/favorite_posts/services/favorite_posts_service.dart';
import 'package:animal_aid_app/favorite_posts/state/favorite_posts_list_state/favorite_posts_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class FavoritePostsListCubit extends Cubit<FavoritePostsListState> {
  final FavoritePostsService _favoritePostsService =
      GetIt.I<FavoritePostsService>();

  FavoritePostsListCubit() : super(FavoritePostsListState.initial()) {
    getFavoritePosts();
  }

  Future<void> getFavoritePosts() async {
    emit(state.copyWith(
      favoritePosts: await _favoritePostsService.favoritePosts,
      loadingStatus: LoadingStatus.done,
    ));
  }
}
