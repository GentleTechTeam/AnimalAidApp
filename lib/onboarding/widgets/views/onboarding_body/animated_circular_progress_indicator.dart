import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class AnimatedCircularProgressIndicator extends StatefulWidget {
  final Duration duration;
  final Size size;
  final double strokeWidth;
  final Color indicatorColor;
  final double startValue;
  final double value;

  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.duration,
    required this.size,
    required this.strokeWidth,
    required this.indicatorColor,
    required this.startValue,
    required this.value,
  }) : super(key: key);

  @override
  _AnimatedCircularProgressIndicatorState createState() =>
      _AnimatedCircularProgressIndicatorState();
}

class _AnimatedCircularProgressIndicatorState
    extends State<AnimatedCircularProgressIndicator>
    with TickerProviderStateMixin {
  // ignore: avoid-late-keyword
  late AnimationController _controller;
  // ignore: avoid-late-keyword
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );
    _animation = Tween(
      begin: widget.startValue,
      end: widget.value,
    ).animate(_controller);
    // ignore: avoid-ignoring-return-values
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.read(context);

    return SizedBox(
      width: widget.size.width,
      height: widget.size.height,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (_, value) => CircularProgressIndicator(
          value: _animation.value,
          backgroundColor: appTheme.colors.withWeakOpacity(
            widget.indicatorColor,
          ),
          color: widget.indicatorColor,
          strokeWidth: widget.strokeWidth,
        ),
      ),
    );
  }
}
