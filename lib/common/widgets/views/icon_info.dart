import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class IconInfo extends StatelessWidget {
  final String text;
  final IconData icon;

  const IconInfo({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);
    final captionColor = Theme.of(context).textTheme.caption?.color;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(appTheme.spacing.xsValue),
          child: Icon(
            icon,
            size: appTheme.sizes.lIconSize,
            color: captionColor,
          ),
        ),
        Text(
          text,
          style: TextStyle(color: captionColor),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
