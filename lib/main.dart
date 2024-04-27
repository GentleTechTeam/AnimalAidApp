import 'package:animal_aid_app/app.dart';
import 'package:animal_aid_app/common/api/gql_client.dart';
import 'package:animal_aid_app/common/services/configuration_service.dart';
import 'package:animal_aid_app/common/services/hive_service.dart';
import 'package:animal_aid_app/common/services/initial_route_service.dart';
import 'package:animal_aid_app/common/services/location_service/location_service.dart';
import 'package:animal_aid_app/common/services/location_service/location_service_mock.dart';
import 'package:animal_aid_app/common/services/navigator_service.dart';
import 'package:animal_aid_app/common/services/user_preferences_service.dart';
import 'package:animal_aid_app/favorite_posts/repositories/favorite_posts_hive_repository.dart';
import 'package:animal_aid_app/favorite_posts/services/favorite_posts_service.dart';
import 'package:animal_aid_app/intrusive_app_update/services/client_meta_service.dart';
import 'package:animal_aid_app/intrusive_app_update/services/client_meta_service_mock.dart';
import 'package:animal_aid_app/post/services/post_service.dart';
import 'package:animal_aid_app/post/services/post_service_mock.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_it/get_it.dart';
import 'package:timeago/timeago.dart' as timeago;

Future<void> main() async {
  EasyLoading.instance
    ..userInteractions = false
    ..dismissOnTap = false;

  timeago.setLocaleMessages('en_US', timeago.EnMessages());

  // ignore: avoid-ignoring-return-values
  WidgetsFlutterBinding.ensureInitialized();

  final configurationService = await ConfigurationService.init();
  GetIt.I.registerSingleton<ConfigurationService>(configurationService);

  GetIt.I.registerSingleton<NavigatorService>(NavigatorService());

  final smmWrapperGraphqlClient = await initGraphqlClient(
    configurationService.smmWrapperServiceUrl,
  );
  GetIt.I.registerSingleton<Client>(smmWrapperGraphqlClient);

  GetIt.I.registerSingleton<LocationService>(LocationServiceMock());

  final hiveService = HiveService();
  await hiveService.init();
  GetIt.I.registerSingleton<HiveService>(hiveService);

  final userPreferencesService = UserPreferencesService();

  GetIt.I.registerSingleton<UserPreferencesService>(userPreferencesService);

  final clientMetaService = ClientMetaServiceMock();
  GetIt.I.registerSingleton<ClientMetaService>(clientMetaService);

  final initialRouteService = InitialRouteService();
  GetIt.I.registerSingleton<InitialRouteService>(initialRouteService);
  await initialRouteService.init();

  GetIt.I.registerSingleton<PostService>(PostServiceMock());

  final favoritePostsService = FavoritePostsService(
    favoritePostsRepository: FavoritePostsHiveRepository(),
  );
  GetIt.I.registerSingleton<FavoritePostsService>(favoritePostsService);

  runApp(const App());
}
