import 'package:animal_aid_app/common/services/app_info_service.dart';

class AppInfoServiceMock extends AppInfoService {
  @override
  Future<AppInfoResponse> getAppInfo() async {
    final appVersion = await getPackageVersion();

    return AppInfoResponse(version: appVersion);
  }
}
