import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/common/dto/operation_status_handler.dart';
import 'package:animal_aid_app/group_approval_requests/services/group_approval_requests_service_mock.dart';
import 'package:animal_aid_app/group_approval_requests/state/group_approval_requests/group_approval_requests_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GroupApprovalRequestsCubit extends Cubit<GroupApprovalRequestsState> {
  final _service = GroupApprovalRequestsServiceMock();

  GroupApprovalRequestsCubit() : super(GroupApprovalRequestsState.empty()) {
    getData();
  }

  Future<void> getData() async {
    emit(
      GroupApprovalRequestsState.empty()
          .rebuild((b) => b.loadingStatus = LoadingStatus.loading),
    );

    final result = await _service.getRequests();

    if (result.failed) {
      emit(state.rebuild((b) => b.loadingStatus = LoadingStatus.error));

      return;
    }

    emit(
      state.rebuild((b) => b
        ..loadingStatus = LoadingStatus.done
        ..data = result.data.toBuilder()),
    );
  }

  Future<void> makeApprovalDecision({
    required String groupId,
    required bool approvalDecision,
    required OperationStatusHandler statusHandler,
  }) async {
    statusHandler.onLoading();

    final result = await _service.sendApprovalDecision(
      groupId: groupId,
      approvalDecision: approvalDecision,
    );

    if (result.failed) {
      statusHandler.onError();

      return;
    }

    final targetGroupIndex =
        state.data.indexWhere((group) => group.id == groupId);
    final updatedState =
        state.rebuild((b) => {b.data.removeAt(targetGroupIndex)});
    emit(updatedState);
    statusHandler.onSuccess();
  }
}
