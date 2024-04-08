import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/views/content_state_view/loading_state_info_wrapper.dart';
import 'package:animal_aid_app/common/widgets/views/custom_card.dart';
import 'package:animal_aid_app/common/widgets/views/icon_info.dart';
import 'package:flutter/material.dart';

class FavoritePostContentStateView extends StatelessWidget {
  final String emptyDataMessage;
  final LoadingStatus loadingStatus;
  final GPostData_postsFeedItem? data;
  final Widget Function(GPostData_postsFeedItem) builder;

  const FavoritePostContentStateView({
    Key? key,
    required this.emptyDataMessage,
    required this.loadingStatus,
    required this.data,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final post = data;

    if (loadingStatus == LoadingStatus.loading) {
      return _buildFavoriteContentStateViewCard(
        context: context,
        child: const CircularProgressIndicator(),
      );
    }

    if (post == null) {
      return _buildFavoriteContentStateViewCard(
        context: context,
        child: IconInfo(
          text: emptyDataMessage,
          icon: Icons.warning,
        ),
      );
    }

    return builder(post);
  }

  Widget _buildFavoriteContentStateViewCard({
    required BuildContext context,
    required Widget child,
  }) {
    final AppTheme appTheme = AppTheme.watch(context);

    return CustomCard(
      padding: EdgeInsets.zero,
      margin: EdgeInsets.symmetric(
        vertical: appTheme.spacing.mValue,
      ),
      child: LoadingStateInfoWrapper(
        child: child,
      ),
    );
  }
}
