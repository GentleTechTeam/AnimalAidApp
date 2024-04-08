import 'package:animal_aid_app/common/dto/operation_status_handler.dart';
import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/state/group_posts/group_posts_cubit.dart';
import 'package:animal_aid_app/common/state/group_posts/group_posts_state.dart';
import 'package:animal_aid_app/common/widgets/views/checkbox_control.dart';
import 'package:animal_aid_app/common/widgets/views/content_state_view/content_state_view.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_separator.dart';
import 'package:animal_aid_app/group_posts_management/widgets/group_post_main_tags/group_post_main_tags.dart';
import 'package:animal_aid_app/group_posts_management/widgets/group_posts_management/views/group_post.dart';
import 'package:animal_aid_app/group_posts_management/widgets/group_posts_management/views/group_post_controls_layout.dart';
import 'package:animal_aid_app/group_posts_management/widgets/group_posts_management/views/group_posts_management_layout.dart';
import 'package:animal_aid_app/group_posts_management/widgets/group_posts_management/views/save_button.dart';
import 'package:animal_aid_app/group_posts_management/widgets/group_posts_management/views/selection_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class GroupPostsManagement extends StatelessWidget {
  final String groupId;

  const GroupPostsManagement({
    Key? key,
    required this.groupId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider<GroupPostsCubit>(
        create: (_) => GroupPostsCubit(groupId: groupId),
        child: BlocBuilder<GroupPostsCubit, GroupPostsState>(
          builder: (context, state) {
            final groupPostsCubit = BlocProvider.of<GroupPostsCubit>(context);

            return GroupPostsManagementLayout(
              selectionButton: SelectionButton(
                inverseTitle: state.allItemsSelected,
                onPressed: groupPostsCubit.selectAll,
              ),
              saveButton: SaveButton(
                onPressed: () => groupPostsCubit.requestSaveData(
                  statusHandler: OperationStatusHandler(
                    onLoading: () => EasyLoading.show(
                      status: context.strings.saving,
                    ),
                    onSuccess: () => EasyLoading.showSuccess(
                      context.strings.savedSuccessfully,
                      dismissOnTap: true,
                    ),
                    onError: () => EasyLoading.showError(
                      context.strings.savingError,
                    ),
                  ),
                ),
              ),
              posts: ContentStateView(
                loadingStatus: state.loadingStatus,
                emptyDataMessage: context.strings.noPostsAvailable,
                errorMessage: context.strings.errorMessage,
                isEmpty: state.groupPostsCount == 0,
                builder: (_) => ListView.separated(
                  separatorBuilder: (_, __) => const PostSeparator(),
                  itemCount: state.groupPostsCount,
                  itemBuilder: (_, index) {
                    final currentItem = state.getItemByIndex(index);

                    return GroupPostControlsLayout(
                      post: GroupPost(
                        // ignore: avoid-non-null-assertion
                        post: currentItem!,
                        footer: GroupPostMainTags(
                          groupId: groupId,
                          groupPostId: currentItem.id,
                        ),
                      ),
                      control: CheckboxControl(
                        value: state.getItemPublishedStatus(
                          currentItem.id,
                        ),
                        onChanged: (value) =>
                            groupPostsCubit.togglePostDecision(
                          id: currentItem.id,
                          value: value,
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      );
}
