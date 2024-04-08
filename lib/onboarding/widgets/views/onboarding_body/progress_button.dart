import 'package:animal_aid_app/common/constants/widget_keys.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/views/touchable_opacity.dart';
import 'package:animal_aid_app/onboarding/widgets/views/onboarding_body/animated_circular_progress_indicator.dart';
import 'package:flutter/material.dart';

const _iconToButtonSizeRatio = 0.7;

class ProgressButton extends StatelessWidget {
  final Color iconColor;
  final double currentProgressPosition;
  final double lastProgressPosition;
  final VoidCallback? onTap;

  const ProgressButton({
    Key? key,
    required this.iconColor,
    required this.currentProgressPosition,
    required this.lastProgressPosition,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.read(context);
    final onboardingIndicatorStrokeWidth =
        appTheme.sizes.onboardingIndicatorStrokeWidth;
    final whiteColor = appTheme.colors.white;

    return TouchableOpacity(
      onTap: onTap,
      child: Center(
        child: LayoutBuilder(
          builder: (_, constraints) {
            final indicatorSize = constraints.maxHeight;
            final progressButtonSize =
                indicatorSize - onboardingIndicatorStrokeWidth * 2;
            final iconSize = progressButtonSize * _iconToButtonSizeRatio;

            return Stack(
              alignment: AlignmentDirectional.center,
              children: [
                AnimatedCircularProgressIndicator(
                  duration: appTheme.timing.long,
                  // ignore: no-equal-arguments
                  size: Size(indicatorSize, indicatorSize),
                  indicatorColor: whiteColor,
                  strokeWidth: onboardingIndicatorStrokeWidth,
                  startValue: lastProgressPosition,
                  value: currentProgressPosition,
                ),
                Center(
                  child: Container(
                    height: progressButtonSize,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.chevron_right_outlined,
                        key: WidgetKeys.onboardingProgressButton,
                        size: iconSize,
                        color: iconColor,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
