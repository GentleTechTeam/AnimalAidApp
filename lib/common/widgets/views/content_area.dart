import 'package:flutter/material.dart';

class ContentArea extends StatelessWidget {
  final Widget child;

  const ContentArea({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Material(
        child: Container(
          color: Theme.of(context).primaryColorLight,
          child: child,
        ),
      );
}
