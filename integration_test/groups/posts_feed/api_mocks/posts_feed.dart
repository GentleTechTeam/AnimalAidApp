const _mockInitialPostDescription = 'A post without a location';
const _mockUpdatedPostDescription =
    'Пост отфильтрованный по городу пользователя';
const _mockUrgentPostDescription = "The post is filtered by the user's city";
const _mockFundraisingPostDescription = 'Fundraising category';
const _mockPostsFeedResponseLimit = 20;
final _mockDateTime = DateTime.now();

final mockPostFeedResponseWithoutLocationFilter = _MockPostFeedResponse(
  feedItems: _getMockPostFeedItems(key: _mockInitialPostDescription),
  hasMoreItems: true,
);

final mockPostFeedResponseWithoutLocationFilterPageTwo = _MockPostFeedResponse(
  feedItems: _getMockPostFeedItems(
      key: _mockInitialPostDescription,
      startPostIndex: mockPostFeedResponseWithoutLocationFilter.feedItems
          .lastIndexWhere((element) => true)),
  hasMoreItems: false,
);

final mockPostFeedResponseWithLocationFilter = _MockPostFeedResponse(
  feedItems: _getMockPostFeedItems(key: _mockUpdatedPostDescription),
  hasMoreItems: false,
);

final mockFundraisingPostFeedResponse = _MockPostFeedResponse(
  feedItems: _getMockPostFeedItems(key: _mockFundraisingPostDescription),
  hasMoreItems: false,
);

final mockUrgentPostFeedResponse = _MockPostFeedResponse(
  feedItems: _getMockPostFeedItems(key: _mockUrgentPostDescription),
  hasMoreItems: false,
);

List<_MockPostFeedItem> _getMockPostFeedItems({
  required String key,
  int startPostIndex = 0,
}) =>
    [
      for (var i = startPostIndex;
          i < startPostIndex + _mockPostsFeedResponseLimit;
          i += 1)
        _MockPostFeedItem(i, key)
    ];

class _MockPostFeedItem {
  final int _index;
  final String _key;

  _MockPostFeedItem(this._index, this._key);

  String get description => 'Post by key $_key with id $_index';
  String get date =>
      _mockDateTime.subtract(Duration(days: _index)).toIso8601String();

  Map<String, dynamic> toRawResponseItem() => <String, dynamic>{
        'id': _index.toString(),
        'creationDate': date,
        'photoAttachmentUrls': <String>['https://via.placeholder.com/400x400'],
        'url': 'https://google.com',
        'group': <String, dynamic>{
          'id': 'mockGroupId',
          'name': 'Mocked post group $_index',
          'groupPhotoUrl': 'https://via.placeholder.com/100x100',
          'groupUrl': 'https://google.com',
        },
        'description': description,
      };
}

class _MockPostFeedResponse {
  final List<_MockPostFeedItem> feedItems;
  final bool _hasMoreItems;

  _MockPostFeedResponse({required this.feedItems, required bool hasMoreItems})
      : _hasMoreItems = hasMoreItems;

  Map<String, dynamic> toRawResponseData() => <String, dynamic>{
        'postsFeed': <String, dynamic>{
          'items': feedItems.map((item) => item.toRawResponseItem()).toList(),
          'hasMoreItems': _hasMoreItems,
        },
      };
}
