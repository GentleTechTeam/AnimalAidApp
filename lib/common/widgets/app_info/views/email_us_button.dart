import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class EmailUsButton extends StatelessWidget {
  final VoidCallback onPressed;

  const EmailUsButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => OutlinedButton(
        onPressed: onPressed,
        child: Text(
          context.strings.writeUs,
          style: Theme.of(context).textTheme.caption,
        ),
        style: TextButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
      );
}
