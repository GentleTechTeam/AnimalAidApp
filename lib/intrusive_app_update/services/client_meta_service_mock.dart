import 'package:animal_aid_app/intrusive_app_update/services/client_meta_service.dart';

class ClientMetaServiceMock extends ClientMetaService {
  @override
  Future<void> validateAppVersion() async {
    return;
  }
}
