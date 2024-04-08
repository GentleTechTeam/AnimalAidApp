import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/services/navigator_service.dart';
import 'package:animal_aid_app/common/widgets/app_menu/views/app_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class FavoritePostsMenuItem extends StatelessWidget {
  const FavoritePostsMenuItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => AppMenuItem(
        title: context.strings.favoritePostMenuTitleName,
        subtitle: context.strings.favoritePostMenuSubtitleName,
        iconData: Icons.favorite_border,
        onPressed: () => _navigateToFavoritePostsScreen(context),
      );

  void _navigateToFavoritePostsScreen(BuildContext context) =>
      GetIt.I<NavigatorService>().navigateToFavoritePostsScreen(
        context: context,
      );
}
