import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/services/group_posts_service.dart';
import 'package:built_collection/built_collection.dart';

class GroupPostsServiceMock extends GroupPostsService {
  @override
  Future<GroupPostsResponse> getData({
    required String groupId,
  }) async =>
      GroupPostsResponse(
        data: [
          GGroupPostsData_groupPosts_items(
            (b) => b
              ..G__typename = 'GroupPost'
              ..id = '1'
              ..creationDate = DateTime.now().toIso8601String()
              ..description = 'Mock post description'
              ..photoAttachmentUrls = ListBuilder()
              ..published = false
              ..assignedTags = ListBuilder(),
          ),
          GGroupPostsData_groupPosts_items(
            (b) => b
              ..G__typename = 'GroupPost 2'
              ..id = '2'
              ..creationDate = DateTime.now().toIso8601String()
              ..description = 'Mock post description'
              ..photoAttachmentUrls = ListBuilder()
              ..published = false
              ..assignedTags = ListBuilder(),
          ),
          GGroupPostsData_groupPosts_items(
            (b) => b
              ..G__typename = 'GroupPost 3'
              ..id = '3'
              ..creationDate = DateTime.now().toIso8601String()
              ..description = 'Mock post description'
              ..photoAttachmentUrls = ListBuilder()
              ..published = false
              ..assignedTags = ListBuilder(),
          ),
        ].toBuiltList(),
      );

  @override
  Future<DataSavedResponse> requestSaveData({
    required List<GTogglePostsInFeedPayload> decisions,
  }) async =>
      DataSavedResponse();

  @override
  Future<UpdatedPostDataResponse> requestAssignTagToPost({
    required String groupId,
    required String postId,
    required String tag,
  }) async =>
      UpdatedPostDataResponse();

  @override
  Future<UpdatedPostDataResponse> requestDeleteTagFromPost({
    required String groupId,
    required String postId,
    required String tag,
  }) async =>
      UpdatedPostDataResponse();
}
