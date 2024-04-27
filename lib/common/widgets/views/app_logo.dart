import 'package:animal_aid_app/common/styles/theme.dart';
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
  Widget build(BuildContext context) {
    final theme = AppTheme.watch(context);

    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: theme.colors.withStrongOpacity(backgroundColor),
      ),
      child: Image.asset(
        imagePath,
        width: logoSize.width,
        height: logoSize.height,
      ),
    );
  }
}
