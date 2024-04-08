import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'group_approval_requests_state.g.dart';

abstract class GroupApprovalRequestsState
    implements
        Built<GroupApprovalRequestsState, GroupApprovalRequestsStateBuilder> {
  GroupApprovalRequestsState._();

  factory GroupApprovalRequestsState([
    void Function(GroupApprovalRequestsStateBuilder)? updates,
  ]) = _$GroupApprovalRequestsState;

  BuiltList<GGroupApprovalRequestsData_charityGroupsWaitingForApproval>
      get data;
  LoadingStatus get loadingStatus;

  static GroupApprovalRequestsState empty() =>
      GroupApprovalRequestsState((b) => b..loadingStatus = LoadingStatus.never);
}
