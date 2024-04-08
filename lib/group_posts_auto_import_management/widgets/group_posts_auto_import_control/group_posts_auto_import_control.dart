import 'package:animal_aid_app/common/dto/operation_status_handler.dart';
import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/group_posts_auto_import_management/state/group_posts_auto_import_management/group_posts_auto_import_management_cubit.dart';
import 'package:animal_aid_app/group_posts_auto_import_management/state/group_posts_auto_import_management/group_posts_auto_import_management_state.dart';
import 'package:animal_aid_app/group_posts_auto_import_management/widgets/group_posts_auto_import_control/views/group_posts_auto_import_control_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class GroupPostsAutoImportControl extends StatelessWidget {
  final String groupId;

  const GroupPostsAutoImportControl({
    Key? key,
    required this.groupId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocProvider<GroupPostsAutoImportManagementCubit>(
        create: (context) =>
            GroupPostsAutoImportManagementCubit(groupId: groupId),
        child: BlocBuilder<GroupPostsAutoImportManagementCubit,
            GroupPostsAutoImportManagementState>(
          builder: (context, current) {
            final groupPostsAutoImportManagementCubit =
                BlocProvider.of<GroupPostsAutoImportManagementCubit>(context);

            return GroupPostsAutoImportControlView(
              isEnabled: current.isEnabled,
              onEnable: () =>
                  groupPostsAutoImportManagementCubit.enableAutoImport(
                OperationStatusHandler(
                  onLoading: () => EasyLoading.show(
                    status: context.strings.sendingRequest,
                  ),
                  onSuccess: () => EasyLoading.dismiss(),
                  onError: () => EasyLoading.showError(
                    context.strings.errorMessage,
                  ),
                ),
              ),
              loadingStatus: current.loadingStatus,
            );
          },
        ),
      );
}
