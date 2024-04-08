import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingImage extends StatelessWidget {
  final Color color;
  final String imagePath;

  const OnboardingImage({
    Key? key,
    required this.color,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.read(context);

    return Container(
      padding: EdgeInsets.all(appTheme.spacing.x4lValue),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: Center(
        child: SvgPicture.asset(imagePath),
      ),
    );
  }
}
