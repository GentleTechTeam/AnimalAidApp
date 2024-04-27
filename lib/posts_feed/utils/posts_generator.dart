import 'dart:math';

import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/constants/tag_key_mock.dart';
import 'package:built_collection/built_collection.dart';

abstract class PostsGenerator {
  static const _picHostingKeyWords = [
    'dog',
    'cat',
    'animal',
    'pet',
    'puppy',
    'kitten',
  ];
  static const _randomPicUrl = 'https://source.unsplash.com/random/';
  static const _defaultPostPicSize = '900x600';
  static const _defaultPostUrl = 'https://www.google.com';
  static const _defaultPostType = 'Post';
  static const _defaultGroupType = 'PostGroup';
  static const _maxPostsPicCount = 3;
  static const _maxPicHostingKeyWords = 6;

  static List<GPostsFeedData_postsFeed_items> generate({
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

      final post = GPostsFeedData_postsFeed_items(
        (b) => b
          ..id = index.toString()
          ..description = _PostTextGenerator.generatePostText()
          ..G__typename = _defaultPostType
          ..group = groupBuilder
          ..url = _defaultPostUrl
          ..photoAttachmentUrls = photoUrlBuilder
          ..creationDate =
              now.subtract(Duration(hours: index)).toIso8601String(),
      );

      posts.add(post);
    }

    return posts;
  }

  static ListBuilder<String> _getPhotoUrlBuilder({
    required int postIndex,
    required TagKeyMock tagKeyMock,
  }) {
    final random = Random();
    final maxPhotos = random.nextInt(_maxPostsPicCount) + 1;

    final picUrls = <String>[];

    for (var index = 0; index < maxPhotos; index++) {
      final keywordsCount = random.nextInt(_maxPicHostingKeyWords) + 1;
      var selectedWords = List<String>.from(_picHostingKeyWords)..shuffle();
      selectedWords = selectedWords.take(keywordsCount).toList();
      picUrls.add(
        '$_randomPicUrl/$_defaultPostPicSize/?${selectedWords.join(',')}?$postIndex${tagKeyMock.name}$index',
      );
    }

    return ListBuilder<String>(picUrls);
  }

  static GPostsFeedData_postsFeed_items_groupBuilder _getGroupBuilder({
    required TagKeyMock tagKey,
    required int postIndex,
  }) {
    final random = Random();

    final matchedGroups = TagKeyMock.cute == tagKey
        ? _Mocks.groups
        : _Mocks.groups.where((group) => tagKey == group.tagKeyMock);

    final index = random.nextInt(matchedGroups.length);
    final randomGroup = matchedGroups.elementAt(index);

    return GPostsFeedData_postsFeed_items_groupBuilder()
      ..id = randomGroup.id
      ..name = randomGroup.name
      ..groupPhotoUrl =
          '$_randomPicUrl/$_defaultPostPicSize/?dog,cat?$postIndex$tagKey'
      ..G__typename = _defaultGroupType;
  }
}

abstract class _PostTextGenerator {
  static String generatePostText() {
    final intro = _getIntro();
    final event = _getEvent();
    final action = _getAction();

    return '$intro $event $action';
  }

  static String _getIntro() =>
      _Mocks.introductions[Random().nextInt(_Mocks.introductions.length)];

  static String _getEvent() =>
      _Mocks.events[Random().nextInt(_Mocks.events.length)];

  static String _getAction() =>
      _Mocks.callsToAction[Random().nextInt(_Mocks.callsToAction.length)];
}

abstract class _Mocks {
  static const introductions = [
    'Great news!',
    'Update:',
    'Just in!',
    "We're thrilled to announce",
    'Exciting development:',
    'Heartwarming moment:',
    'Important alert:',
    'Community reminder:',
    "Don't forget:",
    'Special highlight:',
    'Wonderful news from us!',
    'Big update coming your way!',
    "Today's amazing update!",
    'Thrilled to share:',
    'Exciting news update:',
    'Touching update from our team:',
    'Announcement:',
    'Reminder for everyone:',
    'Special news update:',
    'A heartwarming update:',
    'Community news:',
    'Can’t wait to share this:',
    'Happening now:',
    'From our heart to yours:',
    'Message from our team:',
    'A quick update:',
    'Special community news:',
    'Today’s reminder:',
    'Breaking news!',
    'Here’s what you need to know:',
  ];

  static const events = [
    'our annual fundraiser this Saturday!',
    'a pet adoption day this Sunday!',
    'volunteer orientation next week!',
    'our big sale on pet supplies!',
    'a free veterinary check-up camp!',
    'a charity auction for our furry friends!',
    'a community pet parade!',
    'a training session for new pet owners!',
    'an online webinar on pet care!',
    'a meet and greet with our rescues!',
    'a gala event for our donors!',
    'a local community cleanup day!',
    'a photo contest for your pets!',
    'an educational tour of our facilities!',
    'a workshop on pet first aid!',
    'a storytelling evening about rescued pets!',
    'a puppy training class!',
    'a cat socialization event!',
    'a pet-themed art exhibition!',
    'a fundraising walkathon!',
    'our shelter’s anniversary celebration!',
    'a guided tour for potential volunteers!',
    'an animal behavior workshop!',
    'a holiday-themed adoption day!',
    'a summer picnic with the pets!',
    'a foster care information session!',
    'a special movie night fundraiser!',
    'a book sale for pet lovers!',
    'an awareness campaign about spaying and neutering!',
    'our end-of-year donor banquet!',
  ];

  static const callsToAction = [
    'Join us and make a difference!',
    'Come see us at the shelter!',
    "Don't miss out on the fun!",
    'Help us spread the word!',
    'Volunteer with us this weekend!',
    'Every donation counts, big or small!',
    'Adopt, don’t shop!',
    'Visit our website for more details!',
    'Follow us on social media!',
    'Sign up for our newsletter!',
    'Share this post with your friends!',
    'Donate today and save a life!',
    'Your support is crucial!',
    'Become a foster parent today!',
    'Consider volunteering your time!',
    'Help us reach our fundraising goal!',
    'Shop our charity merchandise!',
    'Participate in our upcoming event!',
    'Tell your friends about our mission!',
    'Become a member of our society!',
    'Sponsor a pet’s care!',
    'Buy tickets for our next event!',
    'Get involved in our community!',
    'Support our latest campaign!',
    'Check out our new blog post!',
    'Spread the word about our work!',
    'Take a moment to visit our shelter!',
    'Engage with us online!',
    'Stay tuned for more updates!',
    'Remember to care for your pets!',
  ];

  static const groups = [
    _GroupMock(
      id: '1',
      name: 'Paws and Claws Rescue',
      tagKeyMock: TagKeyMock.cute,
    ),
    _GroupMock(
      id: '2',
      name: 'Whisker Wonderland Sanctuary',
      tagKeyMock: TagKeyMock.important,
    ),
    _GroupMock(
      id: '3',
      name: 'Furry Friends Foster Network',
      tagKeyMock: TagKeyMock.fundraising,
    ),
    _GroupMock(
      id: '4',
      name: 'Tail Waggers Haven',
      tagKeyMock: TagKeyMock.assistance,
    ),
    _GroupMock(
      id: '5',
      name: 'Happy Tails Animal Rescue',
      tagKeyMock: TagKeyMock.cute,
    ),
    _GroupMock(
      id: '6',
      name: 'Safe Paws Shelter',
      tagKeyMock: TagKeyMock.important,
    ),
    _GroupMock(
      id: '7',
      name: 'Four Paws Animal Rescue',
      tagKeyMock: TagKeyMock.fundraising,
    ),
    _GroupMock(
      id: '8',
      name: 'Barks and Meows Shelter',
      tagKeyMock: TagKeyMock.assistance,
    ),
    _GroupMock(
      id: '9',
      name: 'Second Chance Animal Rescue',
      tagKeyMock: TagKeyMock.cute,
    ),
    _GroupMock(
      id: '10',
      name: 'New Leash on Life',
      tagKeyMock: TagKeyMock.important,
    ),
    _GroupMock(
      id: '11',
      name: 'Pawsitive Hope Shelter',
      tagKeyMock: TagKeyMock.fundraising,
    ),
    _GroupMock(
      id: '12',
      name: "The Cat's Meow Rescue",
      tagKeyMock: TagKeyMock.assistance,
    ),
    _GroupMock(
      id: '13',
      name: 'Golden Paws Society',
      tagKeyMock: TagKeyMock.cute,
    ),
    _GroupMock(
      id: '14',
      name: 'Feathered Friends Parrot Rescue',
      tagKeyMock: TagKeyMock.important,
    ),
    _GroupMock(
      id: '15',
      name: 'Fur-Ever Home Rescue',
      tagKeyMock: TagKeyMock.fundraising,
    ),
    _GroupMock(
      id: '16',
      name: 'Paws, Claws, & Hooves Sanctuary',
      tagKeyMock: TagKeyMock.assistance,
    ),
    _GroupMock(
      id: '17',
      name: 'Rescue Rehab Rehome',
      tagKeyMock: TagKeyMock.cute,
    ),
    _GroupMock(
      id: '18',
      name: 'Urban Tails Inner City Shelter',
      tagKeyMock: TagKeyMock.important,
    ),
    _GroupMock(
      id: '19',
      name: 'Snout Safehouse',
      tagKeyMock: TagKeyMock.fundraising,
    ),
    _GroupMock(
      id: '20',
      name: 'Haven for Hounds',
      tagKeyMock: TagKeyMock.assistance,
    ),
    _GroupMock(
      id: '21',
      name: 'Whispering Paws Foundation',
      tagKeyMock: TagKeyMock.cute,
    ),
    _GroupMock(
      id: '22',
      name: 'Claws N’ Paws Wild Care',
      tagKeyMock: TagKeyMock.important,
    ),
    _GroupMock(
      id: '23',
      name: 'Feathers and Fur Sanctuary',
      tagKeyMock: TagKeyMock.fundraising,
    ),
    _GroupMock(
      id: '24',
      name: 'Hoofbeat Hearts Rescue',
      tagKeyMock: TagKeyMock.assistance,
    ),
    _GroupMock(
      id: '25',
      name: 'Scales and Tails Rescue',
      tagKeyMock: TagKeyMock.cute,
    ),
    _GroupMock(
      id: '26',
      name: 'Purrfect Companions Shelter',
      tagKeyMock: TagKeyMock.important,
    ),
    _GroupMock(
      id: '27',
      name: 'Ruff Times Rescue Service',
      tagKeyMock: TagKeyMock.fundraising,
    ),
    _GroupMock(
      id: '28',
      name: 'Happy Hooves Farm Rescue',
      tagKeyMock: TagKeyMock.assistance,
    ),
    _GroupMock(
      id: '29',
      name: 'Critter Comfort Rescue',
      tagKeyMock: TagKeyMock.cute,
    ),
    _GroupMock(
      id: '30',
      name: 'True Blue Animal Rescue',
      tagKeyMock: TagKeyMock.important,
    ),
    _GroupMock(
      id: '31',
      name: 'Urban Animal Alliance',
      tagKeyMock: TagKeyMock.fundraising,
    ),
    _GroupMock(
      id: '32',
      name: 'Wild Heart Rescue Ranch',
      tagKeyMock: TagKeyMock.assistance,
    ),
    _GroupMock(
      id: '33',
      name: 'Forever Friends Foster Care',
      tagKeyMock: TagKeyMock.cute,
    ),
    _GroupMock(
      id: '34',
      name: 'Little Paws Big Hearts',
      tagKeyMock: TagKeyMock.important,
    ),
    _GroupMock(
      id: '35',
      name: 'Tails of Hope Sanctuary',
      tagKeyMock: TagKeyMock.fundraising,
    ),
    _GroupMock(
      id: '36',
      name: 'Wings of Freedom Bird Haven',
      tagKeyMock: TagKeyMock.assistance,
    ),
    _GroupMock(
      id: '37',
      name: 'Paws and Reflect Advocates',
      tagKeyMock: TagKeyMock.cute,
    ),
    _GroupMock(
      id: '38',
      name: 'Four Legged Love',
      tagKeyMock: TagKeyMock.important,
    ),
    _GroupMock(
      id: '39',
      name: 'Hound Haven Home',
      tagKeyMock: TagKeyMock.fundraising,
    ),
    _GroupMock(
      id: '40',
      name: 'Whiskers and Wags Rescue',
      tagKeyMock: TagKeyMock.assistance,
    ),
    _GroupMock(
      id: '41',
      name: 'Canine Companions Rescue',
      tagKeyMock: TagKeyMock.cute,
    ),
    _GroupMock(
      id: '42',
      name: 'Echoes of the Wild Sanctuary',
      tagKeyMock: TagKeyMock.important,
    ),
    _GroupMock(
      id: '43',
      name: 'Buddies in Bad Times Rescue',
      tagKeyMock: TagKeyMock.fundraising,
    ),
    _GroupMock(
      id: '44',
      name: 'Animal Guardians Haven',
      tagKeyMock: TagKeyMock.assistance,
    ),
    _GroupMock(
      id: '45',
      name: 'Retreat for Rescued Pets',
      tagKeyMock: TagKeyMock.cute,
    ),
    _GroupMock(
      id: '46',
      name: 'Safe Haven Animal Sanctuary',
      tagKeyMock: TagKeyMock.important,
    ),
    _GroupMock(
      id: '47',
      name: 'Paw Prints Forever Shelter',
      tagKeyMock: TagKeyMock.fundraising,
    ),
    _GroupMock(
      id: '48',
      name: 'Noble Tails Refuge',
      tagKeyMock: TagKeyMock.assistance,
    ),
    _GroupMock(
      id: '49',
      name: 'Guardians of the Furred',
      tagKeyMock: TagKeyMock.cute,
    ),
    _GroupMock(
      id: '50',
      name: 'Second Chances Animal Rescue',
      tagKeyMock: TagKeyMock.important,
    ),
  ];
}

class _GroupMock {
  final String id;
  final String name;
  final TagKeyMock tagKeyMock;

  const _GroupMock({
    required this.id,
    required this.name,
    required this.tagKeyMock,
  });
}
