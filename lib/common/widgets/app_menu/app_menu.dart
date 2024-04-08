import 'package:animal_aid_app/common/constants/widget_keys.dart';
import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/services/navigator_service.dart';
import 'package:animal_aid_app/common/state/user_meta/user_meta_cubit.dart';
import 'package:animal_aid_app/common/state/user_meta/user_meta_state.dart';
import 'package:animal_aid_app/common/widgets/app_menu/views/app_menu_item.dart';
import 'package:animal_aid_app/common/widgets/app_menu/views/app_menu_layout.dart';
import 'package:animal_aid_app/favorite_posts/widgets/favorite_posts_menu_item/favorite_posts_menu_item.dart';
import 'package:animal_aid_app/locale_control/widgets/locale_control_menu_item.dart';
import 'package:animal_aid_app/theme_control/widgets/theme_control_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class AppMenu extends StatelessWidget {
  final NavigatorService _navigator = GetIt.I<NavigatorService>();

  AppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<UserMetaCubit, UserMetaState>(
        builder: (context, state) => AppMenuLayout(
          menuItems: [
            AppMenuItem(
              key: WidgetKeys.firstAppMenuItem,
              title: context.strings.myRequests,
              subtitle: context.strings.groupsRegistration,
              iconData: Icons.check_circle_outline,
              onPressed: () => _navigator.navigateToGroupsRegistration(
                context: context,
              ),
            ),
            AppMenuItem(
              title: context.strings.myGroups,
              subtitle: context.strings.management,
              iconData: Icons.ballot_outlined,
              onPressed: () => _navigator.navigateToGroupsManagement(
                context: context,
              ),
            ),
            if (state.isAdmin)
              AppMenuItem(
                title: context.strings.incomingRequests,
                subtitle: context.strings.groupsApproval,
                iconData: Icons.verified_user_outlined,
                onPressed: () => _navigator.navigateToGroupApprovalRequests(
                  context: context,
                ),
              ),
            const FavoritePostsMenuItem(),
            const ThemeControlMenuItem(),
            const LocaleControlMenuItem(),
          ],
        ),
      );
}
