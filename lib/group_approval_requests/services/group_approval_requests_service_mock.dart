import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/group_approval_requests/services/group_approval_requests_service.dart';
import 'package:built_collection/built_collection.dart';

class GroupApprovalRequestsServiceMock extends GroupApprovalRequestsService {
  @override
  Future<GetApprovalRequestsResponse> getRequests() async =>
      GetApprovalRequestsResponse(
        data: [
          GGroupApprovalRequestsData_charityGroupsWaitingForApproval(
            (b) => b
              ..id = '1'
              ..name = 'Test Group 1'
              ..G__typename = 'CharityGroup',
          ),
          GGroupApprovalRequestsData_charityGroupsWaitingForApproval(
            (b) => b
              ..id = '2'
              ..name = 'Test Group 2'
              ..G__typename = 'CharityGroup',
          ),
        ].toBuiltList(),
      );

  @override
  Future<ApprovalDecisionResponse> sendApprovalDecision({
    required String groupId,
    required bool approvalDecision,
  }) async =>
      ApprovalDecisionResponse();
}
