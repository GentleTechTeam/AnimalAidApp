import 'package:animal_aid_app/common/api/index.dart';
import 'package:built_collection/built_collection.dart';
import 'package:ferry/ferry.dart';
import 'package:get_it/get_it.dart';

class PostsFeedService {
  final Client _gqlClient = GetIt.I<Client>();

  Future<PostsFeedResponse> getData({
    String? tagGroupId,
    String? tagKey,
    String? locationKey,
    DateTime? fromDate,
  }) async {
    final request = _buildReq(
      tagGroupId: tagGroupId,
      tagKey: tagKey,
      locationKey: locationKey,
      fromDate: fromDate,
    );
    final response = await _gqlClient.request(request).first;
    final responseData = response.data;

    if (response.hasErrors || responseData == null) {
      return PostsFeedResponse(failed: true);
    }

    return PostsFeedResponse(
      data: responseData.postsFeed.items,
      hasMoreToLoad: responseData.postsFeed.hasMoreItems,
    );
  }

  GPostsFeedReq _buildReq({
    String? tagGroupId,
    String? tagKey,
    String? locationKey,
    DateTime? fromDate,
  }) =>
      GPostsFeedReq((b) {
        if (tagGroupId != null) {
          b.vars.tagGroupIds.add(tagGroupId);
        }
        if (tagKey != null) {
          b.vars.tagKeys.add(tagKey);
        }
        if (locationKey != null) {
          b.vars.locationKey = locationKey;
        }
        b.vars.fromDate =
            fromDate?.toIso8601String() ?? DateTime.now().toIso8601String();
        b.fetchPolicy = FetchPolicy.NoCache;

        return b;
      });
}

class PostsFeedResponse {
  final BuiltList<GPostsFeedData_postsFeed_items> data;
  final bool hasMoreToLoad;
  final bool failed;

  PostsFeedResponse({
    this.failed = false,
    BuiltList<GPostsFeedData_postsFeed_items>? data,
    this.hasMoreToLoad = false,
  }) : data = data ?? BuiltList();
}
