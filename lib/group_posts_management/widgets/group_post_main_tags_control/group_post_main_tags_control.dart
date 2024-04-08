import 'package:animal_aid_app/common/dto/operation_status_handler.dart';
import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/state/group_posts/group_posts_cubit.dart';
import 'package:animal_aid_app/common/state/group_posts/group_posts_state.dart';
import 'package:animal_aid_app/common/state/main_tag_groups/main_tag_groups_cubit.dart';
import 'package:animal_aid_app/common/state/main_tag_groups/main_tag_groups_state.dart';
import 'package:animal_aid_app/common/widgets/views/toggleable_items/toggleable_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class GroupPostMainTagsControl extends StatelessWidget {
  final String groupId;
  final String groupPostId;

  const GroupPostMainTagsControl({
    Key? key,
    required this.groupId,
    required this.groupPostId,
  }) : super(key: key);

  void assignPostTag(
    BuildContext context,
    GroupPostsCubit groupPostsCubit,
    String tag,
  ) {
    groupPostsCubit.requestAssignTagToPost(
      postId: groupPostId,
      tag: tag,
      operationStatusHandler: OperationStatusHandler(
        onLoading: () => EasyLoading.show(
          status: context.strings.addingTag(tag),
        ),
        onSuccess: handleTagManageSuccess,
        onError: () => EasyLoading.showError(context.strings.addingTagError),
      ),
    );
  }

  void deletePostTag(
    BuildContext context,
    GroupPostsCubit groupPostsCubit,
    String tag,
  ) {
    groupPostsCubit.requestDeleteTagFromPost(
      postId: groupPostId,
      tag: tag,
      operationStatusHandler: OperationStatusHandler(
        onLoading: () => EasyLoading.show(
          status: context.strings.deletingTag(tag),
        ),
        onSuccess: handleTagManageSuccess,
        onError: () => EasyLoading.showError(context.strings.deletingTagError),
      ),
    );
  }

  void handleTagManageSuccess() {
    EasyLoading.dismiss();
  }

  @override
  Widget build(BuildContext context) {
    final groupPostsCubit = BlocProvider.of<GroupPostsCubit>(context);

    return BlocBuilder<MainTagGroupsCubit, MainTagGroupsState>(
      builder: (context, mainTagsState) =>
          BlocBuilder<GroupPostsCubit, GroupPostsState>(
        builder: (context, groupsPostsState) => ToggleableItems<String>(
          items: mainTagsState.data.expand((tagGroup) => tagGroup.tagKeys),
          toggledItems:
              groupsPostsState.getItemById(groupPostId)?.assignedTags.toSet() ??
                  {},
          extractLabelFromItem: (tag) => tag,
          // ignore: no-equal-arguments
          extractKeyFromItem: (tag) => tag,
          onItemPressed: (tag, isToggled) => _onToggleableItemPressed(
            context: context,
            tag: tag,
            isToggled: isToggled,
            cubit: groupPostsCubit,
          ),
        ),
      ),
    );
  }

  void _onToggleableItemPressed({
    required BuildContext context,
    required String tag,
    required bool isToggled,
    required GroupPostsCubit cubit,
  }) {
    if (!isToggled) {
      assignPostTag(context, cubit, tag);

      return;
    }
    deletePostTag(context, cubit, tag);
  }
}
