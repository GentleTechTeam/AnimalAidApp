import 'dart:math';

import 'package:animal_aid_app/common/constants/tag_key_mock.dart';
import 'package:animal_aid_app/posts_feed/services/posts_feed_service.dart';
import 'package:animal_aid_app/posts_feed/services/posts_generator.dart';
import 'package:built_collection/built_collection.dart';

const maxDelay = 1000;
const minDelay = 500;
const defaultPostsCount = 10;

class PostsFeedServiceMock extends PostsFeedService {
  var lastTag = 'all';
  var lastId = 0;

  @override
  Future<PostsFeedResponse> getData({
    String? tagGroupId,
    String? tagKey,
    String? locationKey,
    DateTime? fromDate,
  }) async {
    final random = Random();

    await Future<void>.delayed(
      Duration(
        milliseconds: minDelay + random.nextInt(maxDelay),
      ),
    );

    final postsGenerator = PostsGenerator();
    final tagKeyMock = tagKey == null
        ? TagKeyMock.cute
        : TagKeyMock.values
            .firstWhere((element) => element.toString() == tagKey);

    final posts = postsGenerator.generate(
      count: defaultPostsCount,
      tagKeyMock: tagKeyMock,
      lastId: lastId,
    );

    if (lastTag != tagKey && tagKey != null) {
      lastTag = tagKey;
      lastId = 0;
    }

    lastId += posts.length;

    return PostsFeedResponse(
      data: posts.toBuiltList(),
      hasMoreToLoad: true,
    );
  }
}
