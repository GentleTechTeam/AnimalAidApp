import 'package:animal_aid_app/common/dto/operation_status_handler.dart';
import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/widgets/views/content_state_view/content_state_view.dart';
import 'package:animal_aid_app/common/widgets/views/group/group_avatar.dart';
import 'package:animal_aid_app/common/widgets/views/group/group_layout.dart';
import 'package:animal_aid_app/common/widgets/views/group/group_name.dart';
import 'package:animal_aid_app/group_approval_requests/state/group_approval_requests/group_approval_requests_cubit.dart';
import 'package:animal_aid_app/group_approval_requests/state/group_approval_requests/group_approval_requests_state.dart';
import 'package:animal_aid_app/group_approval_requests/widgets/group_approval_requests/views/accept_decline_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:url_launcher/url_launcher.dart';

class GroupApprovalRequests extends StatelessWidget {
  final _groupApprovalRequestsCubit = GroupApprovalRequestsCubit();

  GroupApprovalRequests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<GroupApprovalRequestsCubit, GroupApprovalRequestsState>(
        bloc: _groupApprovalRequestsCubit,
        builder: (context, state) => ContentStateView(
          loadingStatus: state.loadingStatus,
          emptyDataMessage: context.strings.noRequests,
          errorMessage: context.strings.errorWhileLoading,
          isEmpty: state.data.isEmpty,
          builder: (_) => ListView.separated(
            separatorBuilder: (_, __) => const Divider(),
            itemCount: state.data.length,
            itemBuilder: (context, index) {
              final currentGroup = state.data[index];

              return GroupLayout(
                image: InkWell(
                  child: GroupAvatar.fromPhotoSrc(
                    photoSrc: currentGroup.groupPhotoUrl,
                  ),
                  onTap: () => _navigateToLink(currentGroup.groupUrl),
                ),
                name: GroupName(name: currentGroup.name),
                control: AcceptDeclineButton(
                  onChanged: (value) => _onAcceptDeclineButtonValueChanged(
                    value: value,
                    groupId: currentGroup.id,
                    sendingRequestMessage: context.strings.sendingRequest,
                    errorMessage: context.strings.errorMessage,
                  ),
                ),
              );
            },
          ),
        ),
      );

  void _navigateToLink(String url) => launch(url);

  void _onAcceptDeclineButtonValueChanged({
    required bool value,
    required String groupId,
    required String sendingRequestMessage,
    required String errorMessage,
  }) =>
      _groupApprovalRequestsCubit.makeApprovalDecision(
        groupId: groupId,
        approvalDecision: value,
        statusHandler: OperationStatusHandler(
          onLoading: () => EasyLoading.show(status: sendingRequestMessage),
          onSuccess: () => EasyLoading.dismiss(),
          onError: () => EasyLoading.showError(errorMessage),
        ),
      );
}
