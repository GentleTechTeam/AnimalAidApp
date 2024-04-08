import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator_ns/liquid_progress_indicator.dart';

class ImageLoadingPlaceholder extends StatelessWidget {
  final double progressValue;

  const ImageLoadingPlaceholder({
    Key? key,
    required this.progressValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.watch(context);
    final imageHeight = appTheme.sizes.postPlaceholderImageHeight;

    return Container(
      alignment: Alignment.center,
      child: SizedBox(
        width: imageHeight,
        height: imageHeight,
        child: LiquidCircularProgressIndicator(
          value: progressValue,
          backgroundColor: appTheme.colors.grey200,
          borderColor: appTheme.colors.grey300,
          valueColor: AlwaysStoppedAnimation(appTheme.colors.grey400),
          borderWidth: appTheme.sizes.xlBorderWidth,
        ),
      ),
    );
  }
}
