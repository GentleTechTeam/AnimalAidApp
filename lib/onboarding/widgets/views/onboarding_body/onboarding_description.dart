import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

const _labelFlexFactor = 2;
const _maxLinesBeforeDescriptionSpanning = 2;

class OnboardingDescription extends StatelessWidget {
  final String label;
  final String description;

  const OnboardingDescription({
    Key? key,
    required this.label,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.read(context);
    final textTheme = Theme.of(context).textTheme;

    final minFontSize = appTheme.typography.minFontSize;
    final whiteColor = appTheme.colors.white;

    return Column(
      children: [
        Expanded(
          flex: _labelFlexFactor,
          child: Align(
            child: AutoSizeText(
              label,
              textAlign: TextAlign.center,
              style: textTheme.headline3?.copyWith(
                color: whiteColor,
                fontWeight: FontWeight.bold,
              ),
              minFontSize: minFontSize,
              maxLines: 1,
            ),
          ),
        ),
        Expanded(
          child: AutoSizeText(
            description,
            textAlign: TextAlign.center,
            style: textTheme.subtitle1?.copyWith(color: whiteColor),
            minFontSize: minFontSize,
            maxLines: _maxLinesBeforeDescriptionSpanning,
          ),
        ),
      ],
    );
  }
}
