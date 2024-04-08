import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

part 'package:animal_aid_app/common/styles/colors.dart';
part 'package:animal_aid_app/common/styles/opacity.dart';
part 'package:animal_aid_app/common/styles/shadows.dart';
part 'package:animal_aid_app/common/styles/sizes.dart';
part 'package:animal_aid_app/common/styles/spacing.dart';
part 'package:animal_aid_app/common/styles/timing.dart';
part 'package:animal_aid_app/common/styles/typography.dart';

final _appOpacity = _AppOpacity();
final _appColors = _AppColors(_appOpacity);
final _appSpacing = _AppSpacing();

// ignore: prefer-match-file-name
class AppTheme {
  final opacity = _appOpacity;
  final colors = _appColors;
  final sizes = _AppSizes();
  final spacing = _appSpacing;
  final timing = _AppTiming();
  final typography = _AppTypography();
  final shadows = _AppShadows();
  final ThemeMode currentThemeMode;

  static final materialTheme = _appThemeData;
  static final darkMaterialTheme = _appDarkThemeData;

  AppTheme._({required this.currentThemeMode});

  static Provider<AppTheme> initProvider({
    required ThemeMode themeMode,
    required WidgetBuilder builder,
  }) =>
      Provider(
        create: (_) => AppTheme._(currentThemeMode: themeMode),
        builder: (context, _) => builder(context),
      );

  static AppTheme watch(BuildContext context) => context.watch<AppTheme>();

  static AppTheme read(BuildContext context) => context.read<AppTheme>();
}

final Map<int, Color> _primaryColorShades = {
  50: _appColors.primary.withOpacity(0.1),
  100: _appColors.primary.withOpacity(0.2),
  200: _appColors.primary.withOpacity(0.3),
  300: _appColors.primary.withOpacity(0.4),
  400: _appColors.primary.withOpacity(0.5),
  500: _appColors.primary.withOpacity(0.6),
  600: _appColors.primary.withOpacity(0.7),
  700: _appColors.primary.withOpacity(0.8),
  800: _appColors.primary.withOpacity(0.9),
  900: _appColors.primary,
};

final _appThemeData = ThemeData(
  primarySwatch: MaterialColor(_appColorCode, _primaryColorShades),
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle.light,
  ),
  tabBarTheme: _tabBarTheme,
  cardTheme: _cardThemeData,
  textTheme: _textThemeData,
);

final _appDarkThemeData = ThemeData(
  brightness: Brightness.dark,
  primaryColor: _appColors.primary,
  primaryColorLight: _appColors.primary.withOpacity(0.4),
  // ignore: no-equal-arguments
  primaryColorDark: _appColors.primary,
  backgroundColor: Colors.black,
  colorScheme: ColorScheme.dark(
    secondary: _appColors.accent,
    primary: _appColors.primary,
  ),
  cardColor: const Color(0xFF333333),
  scaffoldBackgroundColor: _appColors.black,
  // ignore: no-equal-arguments
  dialogBackgroundColor: const Color(0xFF333333),
  tabBarTheme: _tabBarTheme,
  cardTheme: _cardThemeData,
  textTheme: _textThemeData,
  toggleableActiveColor: _appColors.accent,
);

final _tabBarTheme = TabBarTheme(
  indicator: UnderlineTabIndicator(
    insets: EdgeInsets.only(bottom: _appSpacing.minValue),
    borderSide: BorderSide(
      color: _appColors.accent,
      width: _appSpacing.x2sValue,
    ),
  ),
);
const _cardThemeData = CardTheme(elevation: 3);
const _textThemeData = TextTheme(
  bodyText2: TextStyle(height: 1.35),
);
