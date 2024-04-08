import 'package:animal_aid_app/common/services/initial_route_service.dart';
import 'package:mockito/mockito.dart';

class InitialRouteServiceMock extends Mock implements InitialRouteService {
  @override
  String get initialRoute => '/';
}
