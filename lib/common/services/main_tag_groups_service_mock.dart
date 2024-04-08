import 'package:animal_aid_app/common/api/main_tag_group/__generated__/main_tag_group.data.gql.dart';
import 'package:animal_aid_app/common/services/main_tag_groups_service.dart';
import 'package:built_collection/built_collection.dart';

class MainTagGroupsServiceMock extends MainTagGroupsService {
  @override
  Future<MainTagGroupsResponse> getData() async => MainTagGroupsResponse(
        data: [
          GMainTagGroupsData_mainTagGroups((b) => b
            ..id = '1'
            ..label = 'New York City'
            ..tagKeys.add('#1')),
          GMainTagGroupsData_mainTagGroups((b) => b
            ..id = '2'
            ..label = 'Los Angeles'
            ..tagKeys.add('#2')),
          GMainTagGroupsData_mainTagGroups((b) => b
            ..id = '3'
            ..label = 'Chicago'
            ..tagKeys.add('#3')),
          GMainTagGroupsData_mainTagGroups((b) => b
            ..id = '4'
            ..label = 'Houston'
            ..tagKeys.add('#4')),
        ].toBuiltList(),
      );
}
