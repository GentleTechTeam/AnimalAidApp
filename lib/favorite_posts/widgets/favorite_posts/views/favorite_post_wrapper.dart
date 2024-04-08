import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';

class FavoritePostWrapper extends StatelessWidget {
  final Widget child;
  final bool isFavorite;

  const FavoritePostWrapper({
    Key? key,
    required this.child,
    required this.isFavorite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);

    return Opacity(
      opacity: isFavorite
          ? appTheme.opacity.enabledOpacity
          : appTheme.opacity.disabledOpacity,
      child: child,
    );
  }
}
