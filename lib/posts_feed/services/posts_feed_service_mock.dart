import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/posts_feed/services/posts_feed_service.dart';
import 'package:built_collection/built_collection.dart';

class PostsFeedServiceMock extends PostsFeedService {
  @override
  Future<PostsFeedResponse> getData({
    String? tagGroupId,
    String? tagKey,
    String? locationKey,
    DateTime? fromDate,
  }) async {
    final firstPostGroupBuilder = GPostsFeedData_postsFeed_items_groupBuilder()
      ..id = '1'
      ..name = 'Pet Haven'
      ..groupPhotoUrl =
          'https://images.freeimages.com/variants/SarTues7r2UAXiYjEcu2Pss9/f4a36f6589a0e50e702740b15352bc00e4bfaf6f58bd4db850e167794d05993d?fmt=webp&h=350'
      ..G__typename = 'PostGroup';

    final firstPostPhotoUrlBuilder = ListBuilder<String>()
      ..addAll([
        'https://images.freeimages.com/images/large-previews/4a6/pet-1543980.jpg?fmt=webp&h=350',
        'https://images.freeimages.com/images/large-previews/559/cat-1362565.jpg?fmt=webp&h=350',
      ]);

    final secondPostGroupBuilder = GPostsFeedData_postsFeed_items_groupBuilder()
      ..id = '1'
      ..name = 'Paw Palace'
      ..groupPhotoUrl =
          'https://images.freeimages.com/variants/vFK5rP2CBFdqNYPR6N1KqZm4/f4a36f6589a0e50e702740b15352bc00e4bfaf6f58bd4db850e167794d05993d?fmt=webp&h=350'
      ..G__typename = 'PostGroup';

    final secondPostPhotoUrlBuilder = ListBuilder<String>()
      ..add(
        'https://images.freeimages.com/images/large-previews/957/street-dog-1570987.jpg?fmt=webp&h=350',
      );

    final groupBuilder3 = GPostsFeedData_postsFeed_items_groupBuilder()
      ..id = '1'
      ..name = 'Cozy Critters'
      ..groupPhotoUrl =
          'https://images.freeimages.com/images/large-previews/537/dog-1550881.jpg?fmt=webp&h=350'
      ..G__typename = 'PostGroup';

    final thirdPostPhotoUrlBuilder = ListBuilder<String>()
      ..add(
        'https://images.freeimages.com/images/large-previews/cb1/cat-1391168.jpg?fmt=webp&h=350',
      );

    return PostsFeedResponse(
      data: [
        GPostsFeedData_postsFeed_items(
          (b) => b
            ..id = '1'
            ..description =
                'Pets, like cats and dogs, bring boundless joy into our lives. Their playful antics and unwavering loyalty make every day brighter.'
            ..G__typename = 'Post'
            ..group = firstPostGroupBuilder
            ..url = 'https://www.google.com'
            ..photoAttachmentUrls = firstPostPhotoUrlBuilder
            ..creationDate = '2021-09-03T21:00:00Z',
        ),
        GPostsFeedData_postsFeed_items(
          (b) => b
            ..id = '2'
            ..description =
                "Welcoming a pet into your home isn't just about gaining a companion; it's about embracing a furry family member who enriches your life with love and laughter."
            ..G__typename = 'Post'
            ..group = secondPostGroupBuilder
            ..url = 'https://www.google.com'
            ..photoAttachmentUrls = secondPostPhotoUrlBuilder
            ..creationDate = '2021-09-02T10:00:00Z',
        ),
        GPostsFeedData_postsFeed_items(
          (b) => b
            ..id = '3'
            ..description =
                "Whether they're curling up beside us for a nap or greeting us with excited tail wags, pets have an incredible ability to make us feel loved and cherished, no matter what."
            ..G__typename = 'Post'
            ..group = groupBuilder3
            ..url = 'https://www.google.com'
            ..photoAttachmentUrls = thirdPostPhotoUrlBuilder
            ..creationDate = '2021-09-01T02:00:00Z',
        ),
      ].toBuiltList(),
    );
  }
}
