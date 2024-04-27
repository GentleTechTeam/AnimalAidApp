import 'package:animal_aid_app/common/api/main_tag_group/__generated__/main_tag_group.data.gql.dart';
import 'package:animal_aid_app/common/constants/tag_key_mock.dart';
import 'package:animal_aid_app/common/services/main_tag_groups_service.dart';
import 'package:built_collection/built_collection.dart';
import 'package:recase/recase.dart';

class MainTagGroupsServiceMock extends MainTagGroupsService {
  @override
  Future<MainTagGroupsResponse> getData() async => MainTagGroupsResponse(
        data: [
          GMainTagGroupsData_mainTagGroups((b) => b
            ..id = '1'
            ..label = TagKeyMock.cute.name.sentenceCase
            ..tagKeys.add(TagKeyMock.cute.name)),
          GMainTagGroupsData_mainTagGroups((b) => b
            ..id = '2'
            ..label = TagKeyMock.important.name.sentenceCase
            ..tagKeys.add(TagKeyMock.important.name)),
          GMainTagGroupsData_mainTagGroups((b) => b
            ..id = '3'
            ..label = TagKeyMock.fundraising.name.sentenceCase
            ..tagKeys.add(TagKeyMock.fundraising.name)),
          GMainTagGroupsData_mainTagGroups((b) => b
            ..id = '4'
            ..label = TagKeyMock.assistance.name.sentenceCase
            ..tagKeys.add(TagKeyMock.assistance.name)),
        ].toBuiltList(),
      );
}
