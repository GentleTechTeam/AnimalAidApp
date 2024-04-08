import 'package:animal_aid_app/common/api/index.dart';
import 'package:built_collection/built_collection.dart';
import 'package:ferry/ferry.dart';
import 'package:get_it/get_it.dart';

class GroupApprovalRequestsService {
  final Client _client = GetIt.I<Client>();

  Future<GetApprovalRequestsResponse> getRequests() async {
    final request = GGroupApprovalRequestsReq(
      (builder) => builder..fetchPolicy = FetchPolicy.NoCache,
    );
    final response = await _client.request(request).first;
    final responseData = response.data;

    if (response.hasErrors || responseData == null) {
      return GetApprovalRequestsResponse(failed: true);
    }

    return GetApprovalRequestsResponse(
      data: responseData.charityGroupsWaitingForApproval,
    );
  }

  Future<ApprovalDecisionResponse> sendApprovalDecision({
    required String groupId,
    required bool approvalDecision,
  }) async {
    final request = GMakeApprovalDecisionReq(
      (builder) => builder
        ..vars.groupId = groupId
        ..vars.approve = approvalDecision
        ..fetchPolicy = FetchPolicy.NoCache,
    );

    final response = await _client.request(request).first;

    if (response.hasErrors) {
      return ApprovalDecisionResponse(failed: true);
    }

    return ApprovalDecisionResponse();
  }
}

class GetApprovalRequestsResponse {
  final BuiltList<GGroupApprovalRequestsData_charityGroupsWaitingForApproval>
      data;
  final bool failed;

  GetApprovalRequestsResponse({
    BuiltList<GGroupApprovalRequestsData_charityGroupsWaitingForApproval>? data,
    this.failed = false,
  }) : data = data ?? BuiltList();
}

class ApprovalDecisionResponse {
  final bool failed;

  ApprovalDecisionResponse({
    this.failed = false,
  });
}
