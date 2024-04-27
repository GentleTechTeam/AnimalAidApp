import 'package:animal_aid_app/common/constants/hive_box_name.dart';
import 'package:animal_aid_app/common/dto/post_meta.dart';
import 'package:animal_aid_app/common/services/hive_service.dart';
import 'package:animal_aid_app/favorite_posts/dto/hive_post_meta.dart';
import 'package:animal_aid_app/favorite_posts/repositories/favorite_posts_repository.dart';
import 'package:collection/collection.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

class FavoritePostsHiveRepository implements FavoritePostsRepository {
  final HiveService _hiveService = GetIt.I<HiveService>();

  @override
  Future<List<PostMeta>> get favoritePosts async {
    final box = await _favoritePostsBox;

    return box.values.map(_PostMetaExt.fromHivePostMeta).toList();
  }

  @override
  Future<void> addPostToFavorites(PostMeta post) async {
    final box = await _favoritePostsBox;

    // ignore: avoid-ignoring-return-values
    await box.add(post.toHivePostMeta());
  }

  @override
  Future<void> deletePostFromFavorites(PostMeta post) async {
    final targetFavoritePost = await _getFavoritePost(post);

    if (targetFavoritePost == null) {
      return;
    }

    await targetFavoritePost.delete();
  }

  @override
  Future<bool> isPostFavorite(PostMeta post) async =>
      (await _getFavoritePost(post)) != null;

  Future<Box<HivePostMeta>> get _favoritePostsBox async => _hiveService.getBox(
        adapter: HivePostMetaAdapter(),
        boxName: HiveBoxName.favoritePost,
      );

  Future<HivePostMeta?> _getFavoritePost(PostMeta post) async {
    final box = await _favoritePostsBox;
    final favoritePosts = box.values;

    return favoritePosts.firstWhereOrNull(post.isEqualToHivePost);
  }
}

extension _PostMetaExt on PostMeta {
  HivePostMeta toHivePostMeta() => HivePostMeta(
        groupId: groupId,
        postId: postId,
      );

  static PostMeta fromHivePostMeta(
    HivePostMeta hivePostMeta,
  ) =>
      PostMeta(
        groupId: hivePostMeta.groupId,
        postId: hivePostMeta.postId,
      );

  bool isEqualToHivePost(HivePostMeta hivePostMeta) =>
      hivePostMeta.groupId == groupId && hivePostMeta.postId == postId;
}
