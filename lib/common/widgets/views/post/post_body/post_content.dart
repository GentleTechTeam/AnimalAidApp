import 'dart:math';

import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/views/interactive_text.dart';
import 'package:animal_aid_app/common/widgets/views/post/post_body/post_text.dart';
import 'package:flutter/material.dart';

class PostContent extends StatefulWidget {
  final String text;
  final InteractiveTextHandler? onTapInteractiveText;
  final bool? forceExpanded;

  const PostContent({
    Key? key,
    required this.text,
    this.onTapInteractiveText,
    this.forceExpanded,
  }) : super(key: key);

  @override
  _PostContentState createState() => _PostContentState();
}

class _PostContentState extends State<PostContent> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    if (widget.text.isEmpty) {
      return const SizedBox.shrink();
    }

    final appTheme = AppTheme.watch(context);
    final textAsRunes = widget.text.runes;
    final collapsedText = _runeSubstring(
      inputRunes: textAsRunes,
      start: 0,
      end: min(
        textAsRunes.length,
        appTheme.typography.briefPostInfoLength,
      ),
    );
    final hasMoreToShow = widget.text.length > collapsedText.length;

    if (widget.forceExpanded ?? _isExpanded) {
      return PostText(
        text: widget.text,
        textColor: appTheme.colors.active,
        onTapInteractiveText: widget.onTapInteractiveText,
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        PostText(
          text: '$collapsedText${hasMoreToShow ? '...' : ''}',
          textColor: appTheme.colors.active,
          onTapInteractiveText: widget.onTapInteractiveText,
        ),
        if (hasMoreToShow)
          TextButton(
            onPressed: () => setState(() => _isExpanded = true),
            child: Text(context.strings.readMore),
          ),
      ],
    );
  }

  /// This helper is used to prevent emojis being cut which may lead to
  /// "Invalid argument(s): string is not well-formed UTF-16" error
  String _runeSubstring({
    required Runes inputRunes,
    required int start,
    required int end,
  }) =>
      String.fromCharCodes(inputRunes.toList().sublist(start, end));
}
