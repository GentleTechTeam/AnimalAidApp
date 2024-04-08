import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/favorite_posts/widgets/favorite_posts/favorite_posts.dart';
import 'package:flutter/material.dart';

class FavoritePostsScreen extends StatelessWidget {
  const FavoritePostsScreen({Key? key}) : super(key: key);

  static String createRoutePath() => '/favorite_posts';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(context.strings.favoritePostsAppBarName),
        ),
        body: const FavoritePosts(),
      );
}
