import 'package:animal_aid_app/common/api/index.dart';
import 'package:ferry/ferry.dart';
import 'package:get_it/get_it.dart';

class PostService {
  final Client _gqlClient = GetIt.I<Client>();

  PostService();

  Future<GPostData_postsFeedItem?> getData({
    required String groupId,
    required String postId,
  }) async {
    final request = _buildReq(
      groupId: groupId,
      postId: postId,
    );
    final response = await _gqlClient.request(request).first;
    final responseData = response.data;

    if (response.hasErrors || responseData == null) {
      return null;
    }

    return responseData.postsFeedItem;
  }

  GPostReq _buildReq({
    required String groupId,
    required String postId,
  }) =>
      GPostReq(
        (b) => b
          ..vars.groupId = groupId
          ..vars.postId = postId
          ..fetchPolicy = FetchPolicy.NoCache,
      );
}
