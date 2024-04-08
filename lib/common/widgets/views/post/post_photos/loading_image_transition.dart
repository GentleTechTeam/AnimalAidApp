import 'package:animal_aid_app/common/widgets/views/cross_animate.dart';
import 'package:flutter/material.dart';

class LoadingImageTransition extends StatelessWidget {
  final bool showFirst;
  final Widget firstChild;
  final Widget secondChild;

  const LoadingImageTransition({
    Key? key,
    required this.showFirst,
    required this.firstChild,
    required this.secondChild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => CrossAnimate(
        firstChild: firstChild,
        secondChild: secondChild,
        showFirst: showFirst,
      );
}
