const postImageUrl = 'https://via.placeholder.com/400x400';

final postsFeedResponse = <String, dynamic>{
  'postsFeed': <String, dynamic>{
    'items': <Map<String, dynamic>>[
      <String, dynamic>{
        'id': 'mockPostId',
        'creationDate': DateTime.now().toIso8601String(),
        'photoAttachmentUrls': <String>[postImageUrl],
        'url': 'https://google.com',
        'group': <String, dynamic>{
          'id': 'mockGroupId',
          'name': 'Mocked post group',
          'groupPhotoUrl': 'https://via.placeholder.com/100x100',
          'groupUrl': 'https://google.com',
        },
        'description': 'Mocked post',
      },
    ],
    'hasMoreItems': false,
  },
};
