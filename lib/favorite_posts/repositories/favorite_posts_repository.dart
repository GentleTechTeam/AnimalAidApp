import 'package:animal_aid_app/common/dto/post_meta.dart';

abstract class FavoritePostsRepository {
  Future<List<PostMeta>> get favoritePosts;
  Future<void> addPostToFavorites(PostMeta post);
  Future<void> deletePostFromFavorites(PostMeta post);
  Future<bool> isPostFavorite(PostMeta post);
}
