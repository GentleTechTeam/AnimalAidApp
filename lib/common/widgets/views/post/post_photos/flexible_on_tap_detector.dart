import 'package:animal_aid_app/common/widgets/views/touchable_opacity.dart';
import 'package:flutter/material.dart';

class FlexibleOnTapDetector extends StatelessWidget {
  final VoidCallback onTap;
  final int flex;
  final Widget child;

  const FlexibleOnTapDetector({
    Key? key,
    required this.onTap,
    required this.flex,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Flexible(
        flex: flex,
        child: TouchableOpacity(onTap: onTap, child: child),
      );
}
