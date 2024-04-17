import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Image.asset(
          'assets/images/logo_with_text.png',
          width: 300,
          height: 300,
        ),
      );
}
