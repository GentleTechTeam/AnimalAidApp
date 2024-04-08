import 'dart:developer';

import 'package:animal_aid_app/common/constants/interactive_text_type.dart';
import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/widgets/views/interactive_text.dart';
import 'package:animal_aid_app/posts_feed/widgets/posts_feed_by_tag_key.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:url_launcher/url_launcher.dart';

enum _UriType {
  email,
  phone,
  url,
}

extension _UriTypeExtension on _UriType {
  static _UriType? fromInteractiveTextType(InteractiveTextType type) {
    switch (type) {
      case InteractiveTextType.email:
        return _UriType.email;
      case InteractiveTextType.phone:
        return _UriType.phone;
      case InteractiveTextType.url:
        return _UriType.url;
      case InteractiveTextType.tag:
        return null;
    }
  }

  String? get scheme {
    switch (this) {
      case _UriType.email:
        return 'mailto';
      case _UriType.phone:
        return 'tel';
      case _UriType.url:
        return null;
    }
  }

  String getLaunchErrorMessage(BuildContext context) {
    switch (this) {
      case _UriType.email:
        return context.strings.noMailAppError;
      case _UriType.phone:
        return context.strings.noPhoneAppError;
      case _UriType.url:
        return context.strings.noWebBrowserAppError;
    }
  }
}

class PostInteractiveTextBuilder extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    InteractiveTextHandler onTapInteractiveText,
  ) builder;

  const PostInteractiveTextBuilder({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => builder(
        context,
        (InteractiveTextType type, String text) => _handleInteractiveText(
          context: context,
          type: type,
          text: text,
        ),
      );

  Future<void> _handleInteractiveText({
    required BuildContext context,
    required InteractiveTextType type,
    required String text,
  }) async {
    if (type == InteractiveTextType.tag) {
      // ignore: avoid-ignoring-return-values
      await showCupertinoModalBottomSheet<Scaffold>(
        context: context,
        builder: (_) => PostsFeedByTagKey(tagKey: text),
      );

      return;
    }

    final uriType = _UriTypeExtension.fromInteractiveTextType(type);
    if (uriType == null) {
      return;
    }

    await _tryLaunchUrl(
      context: context,
      link: text,
      uriType: uriType,
    );
  }

  Future<void> _tryLaunchUrl({
    required BuildContext context,
    required String link,
    required _UriType uriType,
  }) async {
    try {
      final url = uriType.scheme == null
          ? link
          : Uri(
              scheme: uriType.scheme,
              path: link,
            ).toString();

      // ignore: avoid-ignoring-return-values
      await launch(url);
    } catch (e) {
      log(
        'Method _trylaunchUrl can\'t launch URL, probably current device have no app to open URL\n' +
            StackTrace.current.toString() +
            e.toString(),
      );

      // ignore: avoid-ignoring-return-values
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(uriType.getLaunchErrorMessage(context)),
        ),
      );
    }
  }
}
