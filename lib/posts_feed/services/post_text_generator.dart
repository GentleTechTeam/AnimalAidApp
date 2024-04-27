import 'dart:math';

import 'package:animal_aid_app/posts_feed/services/post_text_vocab.dart';

class PostTextGenerator {
  String generatePostText() {
    final intro = _getIntro();
    final event = _getEvent();
    final action = _getAction();

    return '$intro $event $action';
  }

  String _getIntro() => introductions[Random().nextInt(introductions.length)];
  String _getEvent() => events[Random().nextInt(events.length)];
  String _getAction() => callsToAction[Random().nextInt(callsToAction.length)];
}
