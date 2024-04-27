import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/smm_wrapper_service.schema.gql.dart'
    as _i2;
import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/services/user_controlled_groups_service.dart';
import 'package:built_collection/built_collection.dart';

class UserControlledGroupsServiceMock extends UserControlledGroupsService {
  @override
  Future<UserControlledGroupsResponse> getGroups({
    GCharityGroupApprovalStatus? approvalStatus,
  }) async =>
      UserControlledGroupsResponse(
        data: [
          GUserControlledGroupsData_userControlledGroups(
            (b) => b
              ..G__typename = 'CharityGroup'
              ..id = '1'
              ..name = 'Cozy Critters'
              ..approvalStatus = _i2.GCharityGroupApprovalStatus.APPROVED
              ..groupPhotoUrl =
                  'https://images.freeimages.com/images/large-previews/537/dog-1550881.jpg?fmt=webp&h=350'
              ..autoImportSettingsAccessible = true,
          ),
        ].toBuiltList(),
      );

  @override
  Future<GUserControlledGroupsData_userControlledGroups?> sendApprovalReq({
    required String groupId,
  }) async =>
      GUserControlledGroupsData_userControlledGroups(
        (b) => b
          ..G__typename = 'CharityGroup'
          ..id = '1'
          ..name = 'Cozy Critters'
          ..approvalStatus = _i2.GCharityGroupApprovalStatus.APPROVED
          ..groupPhotoUrl =
              'https://images.freeimages.com/images/large-previews/537/dog-1550881.jpg?fmt=webp&h=350'
          ..autoImportSettingsAccessible = true,
      );

  @override
  Future<GUserControlledGroupsData_userControlledGroups?>
      sendChangeLocationReq({
    required String groupId,
    String? locationKey,
  }) async =>
          GUserControlledGroupsData_userControlledGroups(
            (b) => b
              ..G__typename = 'CharityGroup'
              ..id = '1'
              ..name = 'Cozy Critters'
              ..approvalStatus = _i2.GCharityGroupApprovalStatus.APPROVED
              ..groupPhotoUrl =
                  'https://images.freeimages.com/images/large-previews/537/dog-1550881.jpg?fmt=webp&h=350'
              ..autoImportSettingsAccessible = true,
          );
}
