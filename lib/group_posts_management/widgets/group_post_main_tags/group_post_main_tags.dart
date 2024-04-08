import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/services/navigator_service.dart';
import 'package:animal_aid_app/common/state/group_posts/group_posts_cubit.dart';
import 'package:animal_aid_app/common/state/group_posts/group_posts_state.dart';
import 'package:animal_aid_app/common/state/main_tag_groups/main_tag_groups_cubit.dart';
import 'package:animal_aid_app/common/state/main_tag_groups/main_tag_groups_state.dart';
import 'package:animal_aid_app/common/widgets/views/toggleable_items/toggleable_items.dart';
import 'package:animal_aid_app/group_posts_management/widgets/group_post_main_tags/views/cupertino_bottom_dialog_content_wrapper.dart';
import 'package:animal_aid_app/group_posts_management/widgets/group_post_main_tags_control/group_post_main_tags_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class GroupPostMainTags extends StatelessWidget {
  final String groupId;
  final String groupPostId;
  final NavigatorService _navigator = GetIt.I<NavigatorService>();

  GroupPostMainTags({
    Key? key,
    required this.groupId,
    required this.groupPostId,
  }) : super(key: key);

  void openTagsManagementPanel({
    required BuildContext context,
  }) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (builderContext) => BlocProvider.value(
        value: BlocProvider.of<GroupPostsCubit>(context),
        child: CupertinoBottomDialogContentWrapper(
          title: Text(context.strings.availableTags),
          child: GroupPostMainTagsControl(
            groupId: groupId,
            groupPostId: groupPostId,
          ),
          cancelButton: TextButton(
            onPressed: () => _navigator.pop<void>(context: builderContext),
            child: Text(context.strings.close),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<GroupPostsCubit, GroupPostsState>(
        builder: (context, groupPostsState) =>
            BlocBuilder<MainTagGroupsCubit, MainTagGroupsState>(
          builder: (context, currentMainTagGroupsState) {
            final targetGroupPostData =
                groupPostsState.getItemById(groupPostId);
            final allMainTags = currentMainTagGroupsState.data
                .expand((tagGroup) => tagGroup.tagKeys)
                .toSet();
            // ignore: avoid-non-null-assertion
            final assignedMainTags = targetGroupPostData!.assignedTags
                .where((tag) => allMainTags.contains(tag));

            if (assignedMainTags.isEmpty) {
              return ToggleableItems<String>(
                items: const ['#'],
                toggledItems: const {},
                extractLabelFromItem: (item) => item,
                // ignore: no-equal-arguments
                extractKeyFromItem: (item) => item,
                onItemPressed: !targetGroupPostData.published
                    ? null
                    : (_item, _isToggled) => openTagsManagementPanel(
                          context: context,
                        ),
              );
            }

            return ToggleableItems<String>(
              items: assignedMainTags,
              toggledItems: assignedMainTags.toSet(),
              extractLabelFromItem: (tag) => tag,
              // ignore: no-equal-arguments
              extractKeyFromItem: (tag) => tag,
              onItemPressed: !targetGroupPostData.published
                  ? null
                  : (_mainTagGroup, _isToggled) {
                      openTagsManagementPanel(
                        context: context,
                      );
                    },
            );
          },
        ),
      );
}
