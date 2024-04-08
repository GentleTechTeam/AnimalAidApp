import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class DialogBase extends StatelessWidget {
  final String title;
  final String description;
  final Widget? image;
  final List<Widget> buttons;

  const DialogBase({
    Key? key,
    required this.title,
    required this.description,
    this.image,
    required this.buttons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);

    return AlertDialog(
      title: Text(title, textAlign: TextAlign.center),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (image != null) ...[
            // ignore: avoid-non-null-assertion
            image!,
            SizedBox(height: appTheme.spacing.mValue),
          ],
          Text(
            description,
            style: Theme.of(context).textTheme.bodyText2,
            textAlign: TextAlign.center,
          ),
          if (buttons.isNotEmpty) ...[
            SizedBox(height: appTheme.spacing.xsValue),
            ...buttons,
          ],
        ],
      ),
      scrollable: true,
    );
  }
}
