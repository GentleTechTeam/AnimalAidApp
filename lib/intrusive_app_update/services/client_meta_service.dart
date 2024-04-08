import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/constants/runtime_environment.dart';
import 'package:animal_aid_app/common/services/app_info_service_mock.dart';
import 'package:ferry/ferry.dart';
import 'package:get_it/get_it.dart';

class ClientMetaService {
  String? updateUrl;

  final _appInfoService = AppInfoServiceMock();

  ClientMetaService();

  Future<void> validateAppVersion() async {
    if (!RuntimeEnvironment.isAndroid && !RuntimeEnvironment.isIOS) {
      return;
    }

    final appVersion = await _appInfoService.getPackageVersion();
    final _gqlClient = GetIt.I<Client>();
    final req = GClientMetaReq((b) => b
      ..vars.appVersion = appVersion
      ..fetchPolicy = FetchPolicy.NoCache);
    final res = await _gqlClient.request(req).first;
    final resData = res.data;

    if (res.hasErrors || resData == null || resData.mobileClientMeta.isActual) {
      return;
    }

    updateUrl = RuntimeEnvironment.isAndroid
        ? resData.mobileClientMeta.clientUpdateUrlAndroid
        : resData.mobileClientMeta.clientUpdateUrlIos;
  }
}
