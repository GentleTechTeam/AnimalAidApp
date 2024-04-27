import 'dart:math';

import 'package:animal_aid_app/common/constants/tag_key_mock.dart';
import 'package:animal_aid_app/posts_feed/services/posts_feed_service.dart';
import 'package:animal_aid_app/posts_feed/utils/posts_generator.dart';
import 'package:built_collection/built_collection.dart';

class PostsFeedServiceMock extends PostsFeedService {
  static const _maxDelay = 1000;
  static const _minDelay = 500;
  static const _defaultPostsCount = 10;

  var _lastTag = 'all';
  var _lastId = 0;

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
        milliseconds: _minDelay + random.nextInt(_maxDelay),
      ),
    );

    final tagKeyMock = tagKey == null
        ? TagKeyMock.cute
        : TagKeyMock.values
            .firstWhere((element) => element.toString() == tagKey);

    final posts = PostsGenerator.generate(
      count: _defaultPostsCount,
      tagKeyMock: tagKeyMock,
      lastId: _lastId,
    );

    if (_lastTag != tagKey && tagKey != null) {
      _lastTag = tagKey;
      _lastId = 0;
    }

    _lastId += posts.length;

    return PostsFeedResponse(
      data: posts.toBuiltList(),
      hasMoreToLoad: true,
    );
  }
}
