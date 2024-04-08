import 'package:animated_size_and_fade/animated_size_and_fade.dart';
import 'package:flutter/material.dart';

class CrossAnimate extends StatefulWidget {
  final bool showFirst;
  final Widget firstChild;
  final Widget secondChild;

  const CrossAnimate({
    Key? key,
    required this.showFirst,
    required this.firstChild,
    required this.secondChild,
  }) : super(key: key);

  @override
  _CrossAnimateState createState() => _CrossAnimateState();
}

class _CrossAnimateState extends State<CrossAnimate> {
  @override
  Widget build(BuildContext context) => AnimatedSizeAndFade(
        child: widget.showFirst ? widget.firstChild : widget.secondChild,
      );
}
