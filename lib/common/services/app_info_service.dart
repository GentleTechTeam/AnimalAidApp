import 'package:animal_aid_app/common/api/index.dart';
import 'package:ferry/ferry.dart';
import 'package:get_it/get_it.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppInfoService {
  final Client _gqlClient = GetIt.I<Client>();

  Future<AppInfoResponse> getAppInfo() async {
    final appVersion = await getPackageVersion();

    final req = GAppMetaReq((b) => b..fetchPolicy = FetchPolicy.NoCache);
    final res = await _gqlClient.request(req).first;
    final resData = res.data;

    if (res.hasErrors || resData == null) {
      return AppInfoResponse(version: appVersion);
    }

    return AppInfoResponse(
      version: appVersion,
      supportEmail: resData.appMeta.supportEmail,
      privacyPolicyUrl: resData.appMeta.privacyPolicyUrl,
    );
  }

  Future<String> getPackageVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();

    return packageInfo.version;
  }
}

class AppInfoResponse {
  final String version;
  final String supportEmail;
  final String privacyPolicyUrl;

  AppInfoResponse({
    this.version = '',
    this.supportEmail = 'gentletechteam@gmail.com',
    this.privacyPolicyUrl =
        'https://animalaidapp.gentletech.com/privacy-policy',
  });
}
