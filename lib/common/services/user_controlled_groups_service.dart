import 'package:animal_aid_app/common/api/index.dart';
import 'package:built_collection/built_collection.dart';
import 'package:ferry/ferry.dart';
import 'package:get_it/get_it.dart';

class UserControlledGroupsService {
  final Client _client = GetIt.I<Client>();

  Future<UserControlledGroupsResponse> getGroups({
    GCharityGroupApprovalStatus? approvalStatus,
  }) async {
    final req = GUserControlledGroupsReq(
      (builder) => builder
        ..vars.approvalStatus = approvalStatus
        ..fetchPolicy = FetchPolicy.NoCache,
    );

    final response = await _client.request(req).first;
    final responseData = response.data;

    if (response.hasErrors || responseData == null) {
      return UserControlledGroupsResponse(failed: true);
    }

    return UserControlledGroupsResponse(
      data: responseData.userControlledGroups,
    );
  }

  Future<GUserControlledGroupsData_userControlledGroups?> sendApprovalReq({
    required String groupId,
  }) async {
    final request = GRequestUserGroupApprovalReq(
      (builder) => builder
        ..vars.groupId = groupId
        ..fetchPolicy = FetchPolicy.NoCache,
    );
    final response = await _client.request(request).first;
    final responseData = response.data?.requestUserControlledGroupApproval;

    if (response.hasErrors || responseData == null) {
      return null;
    }

    return GUserControlledGroupsData_userControlledGroups((b) => b
      ..id = responseData.id
      ..locationLabel = responseData.locationLabel
      ..name = responseData.name
      ..approvalStatus = responseData.approvalStatus
      ..groupPhotoUrl = responseData.groupPhotoUrl
      ..autoImportSettingsAccessible =
          responseData.autoImportSettingsAccessible);
  }

  Future<GUserControlledGroupsData_userControlledGroups?>
      sendChangeLocationReq({
    required String groupId,
    String? locationKey,
  }) async {
    final request = GChangeUserGroupLocationReq(
      (builder) => builder
        ..vars.groupId = groupId
        ..vars.locationKey = locationKey
        ..fetchPolicy = FetchPolicy.NoCache,
    );
    final response = await _client.request(request).first;
    final responseData = response.data?.changeUserControlledGroupLocation;

    if (response.hasErrors || responseData == null) {
      return null;
    }

    return GUserControlledGroupsData_userControlledGroups((b) => b
      ..id = responseData.id
      ..locationLabel = responseData.locationLabel
      ..name = responseData.name
      ..approvalStatus = responseData.approvalStatus
      ..groupPhotoUrl = responseData.groupPhotoUrl
      ..autoImportSettingsAccessible =
          responseData.autoImportSettingsAccessible);
  }
}

class UserControlledGroupsResponse {
  final BuiltList<GUserControlledGroupsData_userControlledGroups> data;
  final bool failed;

  UserControlledGroupsResponse({
    BuiltList<GUserControlledGroupsData_userControlledGroups>? data,
    this.failed = false,
  }) : data = data ?? BuiltList();
}
