import 'package:animal_aid_app/common/dto/post_meta.dart';
import 'package:animal_aid_app/favorite_posts/repositories/favorite_posts_repository.dart';

class FavoritePostsService {
  final FavoritePostsRepository favoritePostsRepository;

  FavoritePostsService({
    required this.favoritePostsRepository,
  });

  Future<List<PostMeta>> get favoritePosts async =>
      favoritePostsRepository.favoritePosts;

  Future<bool> toggle(PostMeta post) async {
    final favoritePosts = await favoritePostsRepository.favoritePosts;

    if (favoritePosts.contains(post)) {
      await favoritePostsRepository.deletePostFromFavorites(post);

      return false;
    }

    await favoritePostsRepository.addPostToFavorites(post);

    return true;
  }

  Future<bool> isPostFavorite(PostMeta post) async =>
      favoritePostsRepository.isPostFavorite(post);
}
