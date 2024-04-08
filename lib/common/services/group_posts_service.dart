import 'package:animal_aid_app/common/api/index.dart';
import 'package:built_collection/built_collection.dart';
import 'package:ferry/ferry.dart';
import 'package:get_it/get_it.dart';

class GroupPostsService {
  final Client _client = GetIt.I<Client>();

  Future<GroupPostsResponse> getData({required String groupId}) async {
    final req = GGroupPostsReq(
      (b) => b
        ..vars.groupId = groupId
        ..fetchPolicy = FetchPolicy.NoCache,
    );

    final response = await _client.request(req).first;
    final responseData = response.data;

    if (response.hasErrors || responseData == null) {
      return GroupPostsResponse(failed: true);
    }

    return GroupPostsResponse(data: responseData.groupPosts.items);
  }

  Future<DataSavedResponse> requestSaveData({
    required List<GTogglePostsInFeedPayload> decisions,
  }) async {
    final request = GTogglePostsInFeedReq((builder) => builder
      ..vars.payload.replace(decisions)
      ..fetchPolicy = FetchPolicy.NoCache);
    final response = await _client.request(request).first;

    if (response.hasErrors) {
      return DataSavedResponse(failed: true);
    }

    return DataSavedResponse();
  }

  Future<UpdatedPostDataResponse> requestAssignTagToPost({
    required String groupId,
    required String postId,
    required String tag,
  }) async {
    final request = GAssignTagToApprovedPostReq((builder) {
      builder
        ..vars.groupId = groupId
        ..vars.postId = postId
        ..vars.tag = tag
        ..fetchPolicy = FetchPolicy.NoCache;
    });
    final response = await _client.request(request).first;
    final responseData = response.data;

    if (response.hasErrors || responseData == null) {
      return UpdatedPostDataResponse(failed: true);
    }

    final updatedPostData = responseData.assignTagToApprovedPost;
    final normalizedData =
        GGroupPostsData_groupPosts_items.fromJson(updatedPostData.toJson());

    return UpdatedPostDataResponse(updatedPostData: normalizedData);
  }

  Future<UpdatedPostDataResponse> requestDeleteTagFromPost({
    required String groupId,
    required String postId,
    required String tag,
  }) async {
    final request = GDeleteTagFromApprovedPostReq((builder) {
      builder
        ..vars.groupId = groupId
        ..vars.postId = postId
        ..vars.tag = tag
        ..fetchPolicy = FetchPolicy.NoCache;
    });
    final response = await _client.request(request).first;
    final responseData = response.data;

    if (response.hasErrors || responseData == null) {
      return UpdatedPostDataResponse(failed: true);
    }

    final updatedPostData = responseData.deleteTagFromApprovedPost;
    final normalizedData =
        GGroupPostsData_groupPosts_items.fromJson(updatedPostData.toJson());

    return UpdatedPostDataResponse(updatedPostData: normalizedData);
  }
}

class GroupPostsResponse {
  final BuiltList<GGroupPostsData_groupPosts_items> data;
  final bool failed;

  GroupPostsResponse({
    BuiltList<GGroupPostsData_groupPosts_items>? data,
    this.failed = false,
  }) : data = data ?? BuiltList();
}

class DataSavedResponse {
  final bool failed;

  DataSavedResponse({
    this.failed = false,
  });
}

class UpdatedPostDataResponse {
  final GGroupPostsData_groupPosts_items updatedPostData;
  final bool failed;

  UpdatedPostDataResponse({
    GGroupPostsData_groupPosts_items? updatedPostData,
    this.failed = false,
  }) : updatedPostData = updatedPostData ?? GGroupPostsData_groupPosts_items();
}
