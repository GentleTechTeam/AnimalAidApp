import 'package:animal_aid_app/common/widgets/views/interactive_text.dart';
import 'package:flutter/material.dart';

class PostText extends StatelessWidget {
  final String text;
  final Color textColor;
  final InteractiveTextHandler? onTapInteractiveText;

  const PostText({
    Key? key,
    required this.text,
    required this.textColor,
    required this.onTapInteractiveText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.bodyText2;

    if (onTapInteractiveText != null) {
      return InteractiveText(
        text: text,
        matchedTextColor: textColor,
        // ignore: avoid-non-null-assertion
        onTapInteractiveText: onTapInteractiveText!,
        textStyle: textStyle,
      );
    }

    return Text(
      text,
      style: textStyle,
    );
  }
}
