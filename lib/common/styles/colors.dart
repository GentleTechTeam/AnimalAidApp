// ignore_for_file: prefer-trailing-comma

part of 'package:animal_aid_app/common/styles/theme.dart';

const _appColorCode = 0xFF007FEB;
const _appAccentColorCode = 0xFFF38888;
const _activeColorBlueChannelValue = 200;

// ignore: prefer-match-file-name
class _AppColors {
  final primary = const Color(_appColorCode);
  final primaryForeground = Colors.white;
  final accent = const Color(_appAccentColorCode);
  final black = Colors.black;
  final white = Colors.white;
  final grey200 = Colors.grey.shade200;
  final grey300 = Colors.grey.shade300;
  final grey400 = const Color.fromRGBO(215, 215, 215, 1);
  final grey500 = Colors.grey.shade500;

  final _AppOpacity _appOpacity;

  _AppColors(this._appOpacity);

  Color get active => primary.withBlue(_activeColorBlueChannelValue);

  Color withShadowOpacity(Color color) => color.withOpacity(
        _appOpacity.shadowOpacity,
      );
  Color withStrongOpacity(Color color) => color.withOpacity(
        _appOpacity.strongOpacity,
      );
  Color withWeakOpacity(Color color) => color.withOpacity(
        _appOpacity.weakOpacity,
      );
  Color withWeakestOpacity(Color color) => color.withOpacity(
        _appOpacity.weakestOpacity,
      );
}
