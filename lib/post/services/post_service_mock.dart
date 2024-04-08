import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/post/services/post_service.dart';

class PostServiceMock extends PostService {
  @override
  Future<GPostData_postsFeedItem?> getData({
    required String groupId,
    required String postId,
  }) async {
    final groupBuilder1 = GPostData_postsFeedItem_groupBuilder()
      ..id = '1'
      ..name = 'Pet Haven'
      ..groupPhotoUrl =
          'https://images.freeimages.com/variants/SarTues7r2UAXiYjEcu2Pss9/f4a36f6589a0e50e702740b15352bc00e4bfaf6f58bd4db850e167794d05993d?fmt=webp&h=350'
      ..G__typename = 'PostGroup';

    return GPostData_postsFeedItem(
      (b) => b
        ..id = '1'
        ..description =
            'Pets, like cats and dogs, bring boundless joy into our lives. Their playful antics and unwavering loyalty make every day brighter.'
        ..G__typename = 'Post'
        ..url = 'https://www.google.com'
        ..creationDate = '2021-09-03T21:00:00Z'
        ..group = groupBuilder1,
    );
  }
}
