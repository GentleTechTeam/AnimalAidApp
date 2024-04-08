import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/services/user_meta_service.dart';

class UserMetaServiceMock extends UserMetaService {
  @override
  Future<GUserMetaData_userMeta?> getUserMeta() async => GUserMetaData_userMeta(
        (b) => b
          ..isAdmin = false
          ..G__typename = 'TestUser',
      );
}
