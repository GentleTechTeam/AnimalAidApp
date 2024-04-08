import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostMenuItem extends StatelessWidget {
  final VoidCallback onPressed;
  final Icon leading;
  final Text title;

  const PostMenuItem({
    Key? key,
    required this.onPressed,
    required this.leading,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => CupertinoActionSheetAction(
        onPressed: onPressed,
        child: ListTile(
          leading: leading,
          title: title,
        ),
      );
}
