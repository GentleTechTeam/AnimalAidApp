import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/common/dto/content_state_view_entity.dart';
import 'package:animal_aid_app/common/widgets/views/content_state_view/loading_state_info_wrapper.dart';
import 'package:animal_aid_app/common/widgets/views/icon_info.dart';
import 'package:flutter/material.dart';

class ContentStateView extends StatelessWidget {
  final String emptyDataMessage;
  final String errorMessage;
  final bool isEmpty;
  final LoadingStatus? loadingStatus;
  final Widget Function(BuildContext)? builder;

  const ContentStateView({
    Key? key,
    required this.emptyDataMessage,
    required this.errorMessage,
    required this.loadingStatus,
    required this.isEmpty,
    this.builder,
  }) : super(key: key);

  static ContentStateView entity<T>(ContentStateViewEntity<T> dto) =>
      ContentStateView(
        loadingStatus: dto.loadingStatus,
        emptyDataMessage: dto.emptyDataMessage,
        errorMessage: dto.errorMessage,
        isEmpty: dto.data == null,
        builder: dto.data == null
            ? null
            // ignore: avoid-non-null-assertion
            : (_) => dto.builder(dto.data!),
      );

  @override
  Widget build(BuildContext context) {
    if (loadingStatus == LoadingStatus.loading) {
      return const LoadingStateInfoWrapper(
        child: CircularProgressIndicator(),
      );
    }
    if (loadingStatus == LoadingStatus.error) {
      return LoadingStateInfoWrapper(
        child: IconInfo(
          text: errorMessage,
          icon: Icons.sync_problem_outlined,
        ),
      );
    }

    if (isEmpty) {
      return LoadingStateInfoWrapper(
        child: IconInfo(
          text: emptyDataMessage,
          icon: Icons.list_outlined,
        ),
      );
    }

    return builder?.call(context) ?? const SizedBox.shrink();
  }
}
