import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final Size logoSize;
  final String imagePath;
  final Color backgroundColor;
  const AppLogo({
    Key? key,
    this.logoSize = const Size(300, 300),
    this.imagePath = 'assets/images/logo_with_text.png',
    this.backgroundColor = Colors.white,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
        ),
        child: Image.asset(
          imagePath,
          width: logoSize.width,
          height: logoSize.height,
        ),
      );
}
