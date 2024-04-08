import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/common/dto/operation_status_handler.dart';
import 'package:animal_aid_app/common/services/user_controlled_groups_service_mock.dart';
import 'package:animal_aid_app/common/state/user_controlled_groups/user_controlled_groups_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserControlledGroupsCubit extends Cubit<UserControlledGroupsState> {
  final _service = UserControlledGroupsServiceMock();
  final GCharityGroupApprovalStatus? _approvalStatus;

  UserControlledGroupsCubit({GCharityGroupApprovalStatus? approvalStatus})
      : _approvalStatus = approvalStatus,
        super(UserControlledGroupsState.empty()) {
    getData();
  }

  Future<void> getData() async {
    emit(UserControlledGroupsState.empty()
        .rebuild((b) => b..loadingStatus = LoadingStatus.loading));

    final result = await _service.getGroups(approvalStatus: _approvalStatus);

    if (result.failed) {
      emit(state.rebuild((b) => b..loadingStatus = LoadingStatus.error));

      return;
    }

    emit(state.rebuild((b) => b
      ..loadingStatus = LoadingStatus.done
      ..data.replace(result.data)));
  }

  Future<void> sendApprovalReq({
    required String groupId,
    required OperationStatusHandler operationStatusHandler,
  }) async {
    operationStatusHandler.onLoading();

    final result = await _service.sendApprovalReq(groupId: groupId);

    if (result == null) {
      operationStatusHandler.onError();

      return;
    }

    _updateTargetGroupData(result);
    operationStatusHandler.onSuccess();
  }

  Future<void> sendChangeLocationReq({
    required String groupId,
    String? locationKey,
    required OperationStatusHandler operationStatusHandler,
  }) async {
    operationStatusHandler.onLoading();

    final result = await _service.sendChangeLocationReq(
      groupId: groupId,
      locationKey: locationKey,
    );

    if (result == null) {
      operationStatusHandler.onError();

      return;
    }

    _updateTargetGroupData(result);
    operationStatusHandler.onSuccess();
  }

  void _updateTargetGroupData(
    GUserControlledGroupsData_userControlledGroups groupData,
  ) {
    final targetGroupIndex =
        state.data.indexWhere((group) => group.id == groupData.id);
    final updatedState =
        state.rebuild((b) => {b.data[targetGroupIndex] = groupData});
    emit(updatedState);
  }
}
