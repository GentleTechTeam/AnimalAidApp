import 'dart:math';

import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/constants/tag_key_mock.dart';
import 'package:animal_aid_app/posts_feed/services/mock_groups.dart';
import 'package:animal_aid_app/posts_feed/services/post_text_generator.dart';
import 'package:built_collection/built_collection.dart';

const picHostingKeyWords = [
  'dog',
  'cat',
  'animal',
  'pet',
  'puppy',
  'kitten',
];

const randomPicUrl = 'https://source.unsplash.com/random/';
const defaultPostPicSize = '900x600';
const defaultGroupPicSize = '300x300';
const defaultPostUrl = 'https://www.google.com';
const defaultPostType = 'Post';
const defaultGroupType = 'PostGroup';
const maxPostsPicCount = 3;
const maxPicHostingKeyWords = 6;

class PostsGenerator {
  List<GPostsFeedData_postsFeed_items> generate({
    required int count,
    required int lastId,
    required TagKeyMock tagKeyMock,
  }) {
    final posts = <GPostsFeedData_postsFeed_items>[];
    final now = DateTime.now();

    for (var index = lastId; index < count + lastId; index++) {
      final groupBuilder = _getGroupBuilder(
        postIndex: index,
        tagKey: tagKeyMock,
      );

      final photoUrlBuilder = _getPhotoUrlBuilder(
        postIndex: index,
        tagKeyMock: tagKeyMock,
      );

      final postTextGenerator = PostTextGenerator();

      final post = GPostsFeedData_postsFeed_items(
        (b) => b
          ..id = index.toString()
          ..description = postTextGenerator.generatePostText()
          ..G__typename = defaultPostType
          ..group = groupBuilder
          ..url = defaultPostUrl
          ..photoAttachmentUrls = photoUrlBuilder
          ..creationDate =
              now.subtract(Duration(hours: index)).toIso8601String(),
      );

      posts.add(post);
    }

    return posts;
  }

  ListBuilder<String> _getPhotoUrlBuilder({
    required int postIndex,
    required TagKeyMock tagKeyMock,
  }) {
    final random = Random();
    final maxPhotos = random.nextInt(maxPostsPicCount) + 1;

    final picUrls = <String>[];

    for (var index = 0; index < maxPhotos; index++) {
      final keywordsCount = random.nextInt(maxPicHostingKeyWords) + 1;
      var selectedWords = List<String>.from(picHostingKeyWords)..shuffle();
      selectedWords = selectedWords.take(keywordsCount).toList();
      picUrls.add(
        '$randomPicUrl/$defaultPostPicSize/?${selectedWords.join(',')}?$postIndex${tagKeyMock.name}$index',
      );
    }

    return ListBuilder<String>(picUrls);
  }

  GPostsFeedData_postsFeed_items_groupBuilder _getGroupBuilder({
    required TagKeyMock tagKey,
    required int postIndex,
  }) {
    final random = Random();

    final matchedGroups = TagKeyMock.cute == tagKey
        ? mockGroups
        : mockGroups.where((group) => tagKey == group.tagKeyMock);

    final index = random.nextInt(matchedGroups.length);
    final randomGroup = matchedGroups.elementAt(index);

    return GPostsFeedData_postsFeed_items_groupBuilder()
      ..id = randomGroup.id
      ..name = randomGroup.name
      ..groupPhotoUrl =
          '$randomPicUrl/$defaultPostPicSize/?dog,cat?$postIndex$tagKey'
      ..G__typename = defaultGroupType;
  }
}
