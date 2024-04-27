import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class TouchableOpacity extends StatefulWidget {
  final VoidCallback? onTap;
  final Widget child;

  const TouchableOpacity({
    Key? key,
    required this.child,
    this.onTap,
  }) : super(key: key);

  @override
  _TouchableOpacityState createState() => _TouchableOpacityState();
}

class _TouchableOpacityState extends State<TouchableOpacity>
    with TickerProviderStateMixin {
  // ignore: avoid-late-keyword
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      value: 1,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.read(context);
    final isDisabled = widget.onTap == null;

    return GestureDetector(
      onTap: widget.onTap,
      child: Listener(
        onPointerDown: !isDisabled
            ? (_) => _playAnimation(appTheme.opacity.mediumOpacity)
            : null,
        onPointerUp: !isDisabled ? (_) => _revertAnimation() : null,
        // ignore: no-equal-arguments
        onPointerCancel: !isDisabled ? (_) => _revertAnimation() : null,
        child: MouseRegion(
          cursor: isDisabled ? MouseCursor.defer : SystemMouseCursors.click,
          onEnter: !isDisabled
              ? (_) => _playAnimation(appTheme.opacity.strongOpacity)
              : null,
          onExit: !isDisabled ? (_) => _revertAnimation() : null,
          child: FadeTransition(
            opacity: _animationController,
            child: Opacity(
              opacity: isDisabled ? appTheme.opacity.disabledOpacity : 1,
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }

  Duration get _animationDuration => AppTheme.read(context).timing.medium;

  void _playAnimation(double value) {
    final appTheme = AppTheme.read(context);
    _animationController
      ..duration = appTheme.timing.fast
      ..animateTo(
        value,
        duration: _animationDuration,
      );
  }

  void _revertAnimation() {
    // ignore: avoid-ignoring-return-values
    _animationController.animateTo(
      1,
      duration: _animationDuration,
    );
  }
}
