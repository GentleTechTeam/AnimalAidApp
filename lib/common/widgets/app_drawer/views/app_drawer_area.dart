import 'package:flutter/material.dart';

class AppDrawerArea extends StatelessWidget {
  final Widget child;

  const AppDrawerArea({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: Theme.of(context).primaryColorDark,
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, viewportConstraints) => SingleChildScrollView(
              child: ConstrainedBox(
                constraints:
                    BoxConstraints(minHeight: viewportConstraints.maxHeight),
                child: IntrinsicHeight(
                  child: child,
                ),
              ),
            ),
          ),
        ),
      );
}
