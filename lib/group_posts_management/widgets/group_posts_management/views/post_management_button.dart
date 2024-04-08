import 'package:flutter/material.dart';

class PostManagementButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const PostManagementButton({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      );
}
