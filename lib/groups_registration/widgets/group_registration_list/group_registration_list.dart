import 'package:animal_aid_app/common/dto/operation_status_handler.dart';
import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/state/user_controlled_groups/user_controlled_groups_cubit.dart';
import 'package:animal_aid_app/common/state/user_controlled_groups/user_controlled_groups_state.dart';
import 'package:animal_aid_app/common/widgets/views/content_state_view/content_state_view.dart';
import 'package:animal_aid_app/groups_registration/widgets/group_registration_list/views/group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class GroupRegistrationList extends StatelessWidget {
  final _userControlledGroupListCubit = UserControlledGroupsCubit();

  GroupRegistrationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<UserControlledGroupsCubit, UserControlledGroupsState>(
        bloc: _userControlledGroupListCubit,
        builder: (context, state) => ContentStateView(
          loadingStatus: state.loadingStatus,
          emptyDataMessage: context.strings.noGroupsAvailable,
          errorMessage: context.strings.errorWhileLoading,
          isEmpty: state.data.isEmpty,
          builder: (_) => ListView.separated(
            separatorBuilder: (_, __) => const Divider(),
            itemCount: state.data.length,
            itemBuilder: (context, index) {
              final currentGroup = state.data[index];

              return Group(
                name: currentGroup.name,
                photoUrl: currentGroup.groupPhotoUrl,
                approvalStatus: currentGroup.approvalStatus,
                sendApprovalReq: () =>
                    _userControlledGroupListCubit.sendApprovalReq(
                  groupId: currentGroup.id,
                  operationStatusHandler: OperationStatusHandler(
                    onLoading: () => EasyLoading.show(
                      status: context.strings.sendingRequest,
                    ),
                    onSuccess: () => EasyLoading.dismiss(),
                    onError: () => EasyLoading.showError(
                      context.strings.errorMessage,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );
}
