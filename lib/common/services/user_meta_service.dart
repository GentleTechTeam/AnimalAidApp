import 'package:animal_aid_app/common/api/index.dart';
import 'package:ferry/ferry.dart';
import 'package:get_it/get_it.dart';

class UserMetaService {
  final Client _gqlClient = GetIt.I<Client>();

  Future<GUserMetaData_userMeta?> getUserMeta() async {
    final userMetaReq =
        GUserMetaReq((b) => b..fetchPolicy = FetchPolicy.NoCache);
    final userMetaRes = await _gqlClient.request(userMetaReq).first;
    final responseData = userMetaRes.data;

    if (userMetaRes.hasErrors || responseData == null) {
      return null;
    }

    return responseData.userMeta;
  }
}
