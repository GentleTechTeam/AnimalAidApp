import 'package:flutter/material.dart';

// ignore: prefer-match-file-name
class AppFrame extends StatelessWidget {
  final Widget child;

  const AppFrame({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) => child;
}
