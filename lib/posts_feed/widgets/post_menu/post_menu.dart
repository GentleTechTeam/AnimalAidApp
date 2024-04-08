import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/constants/widget_keys.dart';
import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/services/navigator_service.dart';
import 'package:animal_aid_app/favorite_posts/state/favorite_post_status_state/favorite_post_status_cubit.dart';
import 'package:animal_aid_app/favorite_posts/state/favorite_post_status_state/favorite_post_status_state.dart';
import 'package:animal_aid_app/posts_feed/widgets/post_menu/views/post_menu_item.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_it/get_it.dart';

class PostMenu extends StatelessWidget {
  final String groupId;
  final String postId;
  final VoidCallback? onToggleFavorite;
  final Client _gqlClient = GetIt.I<Client>();
  final NavigatorService _navigator = GetIt.I<NavigatorService>();

  PostMenu({
    Key? key,
    required this.groupId,
    required this.postId,
    this.onToggleFavorite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => IconButton(
        key: WidgetKeys.postMenuButton,
        icon: const Icon(Icons.more_horiz),
        onPressed: () => openMenu(context),
      );

  void openMenu(BuildContext context) {
    // ignore: avoid-ignoring-return-values
    showCupertinoModalPopup<Widget>(
      context: context,
      builder: (_) => CupertinoActionSheet(
        title: Text(context.strings.actionsWithPost),
        actions: [
          BlocProvider(
            create: (_) => FavoritePostStatusCubit(
              groupId: groupId,
              postId: postId,
            ),
            child:
                BlocBuilder<FavoritePostStatusCubit, FavoritePostStatusState>(
              builder: (context, state) => PostMenuItem(
                onPressed: () => onFavoritePress(context),
                leading: _buildFavoriteIcon(state.isFavorite),
                title: _buildFavoriteText(
                  context: context,
                  isFavorite: state.isFavorite,
                ),
              ),
            ),
          ),
          PostMenuItem(
            onPressed: () => _onMenuActionButtonPressed(context),
            leading: const Icon(Icons.report),
            title: Text(context.strings.report),
          ),
        ],
      ),
    );
  }

  Future<void> reportPostConcern(BuildContext context) async {
    await EasyLoading.showToast(
      context.strings.availableOnlyToAuthorizedUsers,
      dismissOnTap: true,
    );

    await EasyLoading.show(status: context.strings.sendingRequest);
    final req = GReportPostConcernReq((b) => b
      ..fetchPolicy = FetchPolicy.NoCache
      ..vars.groupId = groupId
      ..vars.postId = postId);
    final res = await _gqlClient.request(req).first;

    if (res.hasErrors) {
      await EasyLoading.showError(context.strings.execError);

      return;
    }
    await EasyLoading.showSuccess(
      context.strings.reportWillBeReviewed,
      dismissOnTap: true,
    );
  }

  void onFavoritePress(BuildContext context) {
    context.read<FavoritePostStatusCubit>().onFavoritePress();
    onToggleFavorite?.call();
  }

  Icon _buildFavoriteIcon(bool isFavorite) => Icon(
        Icons.favorite,
        color: isFavorite ? Colors.red : null,
      );

  Text _buildFavoriteText({
    required BuildContext context,
    required bool isFavorite,
  }) =>
      isFavorite
          ? Text(context.strings.removeFromFavorites)
          : Text(context.strings.addToFavorites);

  void _onMenuActionButtonPressed(BuildContext context) {
    _navigator.pop<void>(context: context);
    reportPostConcern(context);
  }
}
