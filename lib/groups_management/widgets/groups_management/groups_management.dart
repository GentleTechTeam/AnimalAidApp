import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/services/navigator_service.dart';
import 'package:animal_aid_app/common/state/user_controlled_groups/user_controlled_groups_cubit.dart';
import 'package:animal_aid_app/common/state/user_controlled_groups/user_controlled_groups_state.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/views/content_state_view/content_state_view.dart';
import 'package:animal_aid_app/common/widgets/views/group/group_avatar.dart';
import 'package:animal_aid_app/common/widgets/views/group/group_layout.dart';
import 'package:animal_aid_app/common/widgets/views/group/group_name.dart';
import 'package:animal_aid_app/groups_management/widgets/groups_management/views/auto_import_settings_button.dart';
import 'package:animal_aid_app/groups_management/widgets/groups_management/views/manageable_group_layout.dart';
import 'package:animal_aid_app/groups_management/widgets/groups_management/views/publications_button.dart';
import 'package:animal_aid_app/groups_management/widgets/groups_management_location_button/groups_management_location_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class GroupsManagement extends StatelessWidget {
  final NavigatorService _navigator = GetIt.I<NavigatorService>();
  final _groupsCubit = UserControlledGroupsCubit(
    approvalStatus: GCharityGroupApprovalStatus.APPROVED,
  );

  GroupsManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);

    return BlocProvider(
      create: (_) => _groupsCubit,
      child: BlocBuilder<UserControlledGroupsCubit, UserControlledGroupsState>(
        bloc: _groupsCubit,
        builder: (context, state) => ContentStateView(
          loadingStatus: state.loadingStatus,
          emptyDataMessage: context.strings.noApprovedGroups,
          errorMessage: context.strings.errorWhileLoading,
          isEmpty: state.data.isEmpty,
          builder: (_) => ListView.separated(
            separatorBuilder: (_, index) => SizedBox(
              height: appTheme.spacing.x2sValue,
            ),
            itemCount: state.data.length,
            itemBuilder: (context, index) {
              final currentGroup = state.data[index];

              return ManageableGroupLayout(
                groupData: GroupLayout(
                  image: GroupAvatar.fromPhotoSrc(
                    photoSrc: currentGroup.groupPhotoUrl,
                  ),
                  name: GroupName(name: currentGroup.name),
                ),
                controls: [
                  GroupsManagementLocationButton(groupIndex: index),
                  PublicationsButton(
                    onPress: () => _navigator.navigateToGroupPostsManagement(
                      context: context,
                      groupId: currentGroup.id,
                    ),
                  ),
                  if (currentGroup.autoImportSettingsAccessible)
                    AutoImportSettingsButton(
                      onPress: () =>
                          _navigator.navigateToGroupPostsAutoImportManagement(
                        context: context,
                        groupId: currentGroup.id,
                      ),
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
