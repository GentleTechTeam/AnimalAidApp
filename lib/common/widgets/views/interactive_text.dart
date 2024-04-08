import 'package:animal_aid_app/common/constants/interactive_text_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_parsed_text/flutter_parsed_text.dart';

typedef InteractiveTextHandler = void Function(
  InteractiveTextType type,
  String text,
);

class InteractiveText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final InteractiveTextHandler onTapInteractiveText;
  final Color matchedTextColor;

  const InteractiveText({
    Key? key,
    required this.text,
    required this.onTapInteractiveText,
    required this.matchedTextColor,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ParsedText(
        text: text,
        style: textStyle,
        parse: [
          _getTextMatcher(
            type: ParsedType.EMAIL,
            interactiveTextType: InteractiveTextType.email,
          ),
          _getTextMatcher(
            type: ParsedType.PHONE,
            interactiveTextType: InteractiveTextType.phone,
          ),
          _getTextMatcher(
            type: ParsedType.URL,
            interactiveTextType: InteractiveTextType.url,
          ),
          _getTextMatcher(
            type: ParsedType.CUSTOM,
            interactiveTextType: InteractiveTextType.tag,
            pattern: r'(#+[a-zA-Z0-9(_)]{1,})',
          ),
        ],
      );

  MatchText _getTextMatcher({
    required ParsedType type,
    required InteractiveTextType interactiveTextType,
    String? pattern,
  }) =>
      MatchText(
        type: type,
        pattern: pattern,
        style: TextStyle(color: matchedTextColor),
        onTap: (text) => onTapInteractiveText(interactiveTextType, text),
      );
}
