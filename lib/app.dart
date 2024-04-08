import 'package:animal_aid_app/common/extensions/supported_locale_extension.dart';
import 'package:animal_aid_app/common/services/initial_route_service.dart';
import 'package:animal_aid_app/common/services/navigator_service.dart';
import 'package:animal_aid_app/common/state/app_info/app_info_cubit.dart';
import 'package:animal_aid_app/common/state/app_preferences/app_preferences_cubit.dart';
import 'package:animal_aid_app/common/state/app_preferences/app_preferences_state.dart';
import 'package:animal_aid_app/common/state/location/location_cubit.dart';
import 'package:animal_aid_app/common/state/main_tag_groups/main_tag_groups_cubit.dart';
import 'package:animal_aid_app/common/state/user_meta/user_meta_cubit.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/common/widgets/build_env_banner.dart';
import 'package:animal_aid_app/common/widgets/refresh_rate_updater.dart';
import 'package:animal_aid_app/generated/l10n.dart';
import 'package:animal_aid_app/posts_feed/screens/posts_feed_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final _navigator = GetIt.I<NavigatorService>();
  final _initialRouteService = GetIt.I<InitialRouteService>();

  @override
  Widget build(BuildContext context) => RefreshRateUpdater(
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => _initAppPreferencesCubit(),
              lazy: false,
            ),
            BlocProvider(create: (_) => MainTagGroupsCubit()),
            BlocProvider(
              create: (_) => UserMetaCubit(),
              lazy: false,
            ),
            BlocProvider(
              create: (_) => AppInfoCubit(),
              lazy: false,
            ),
            BlocProvider(create: (_) => LocationCubit()),
          ],
          child: BlocBuilder<AppPreferencesCubit, AppPreferencesState>(
            builder: (_, state) => AppTheme.initProvider(
              themeMode: state.savedThemeMode,
              builder: (_) => MaterialApp(
                localizationsDelegates: const [
                  I18n.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: I18n.delegate.supportedLocales,
                locale: state.savedSupportedLocale.toLocale(),
                theme: AppTheme.materialTheme,
                darkTheme: AppTheme.darkMaterialTheme,
                themeMode: state.savedThemeMode,
                title: 'Animal Aid App',
                builder: EasyLoading.init(
                  builder: (_, child) => BuildEnvBanner.builder(child),
                ),
                initialRoute: _initialRouteService.initialRoute,
                onGenerateInitialRoutes: _onGenerateInitialRoutes,
                onGenerateRoute: _navigator.getGenerator,
                debugShowCheckedModeBanner: false,
              ),
            ),
          ),
        ),
      );

  AppPreferencesCubit _initAppPreferencesCubit() => AppPreferencesCubit()
    ..restoreThemeMode()
    ..restoreLocale();

  List<Route> _onGenerateInitialRoutes(String initialRoute) {
    final targetRoute = _navigator.getGenerator(
      RouteSettings(name: initialRoute),
    );

    if (targetRoute == null) {
      return [
        MaterialPageRoute<void>(
          builder: (_) => const PostsFeedScreen(),
        ),
      ];
    }

    return [targetRoute];
  }
}
