part of 'package:animal_aid_app/common/styles/theme.dart';

// ignore: prefer-match-file-name
class _AppTiming {
  final fast = const Duration(milliseconds: 100);
  final semiFast = const Duration(milliseconds: 375);
  final medium = const Duration(milliseconds: 500);
  final long = const Duration(seconds: 1);

  final requestAfterInputDebounceDuration = const Duration(milliseconds: 800);
  final requestAfterFilterChangeDebounceDuration =
      const Duration(milliseconds: 200);

  final double pullToRefreshAnimationSpeedFactor = 3;
}
