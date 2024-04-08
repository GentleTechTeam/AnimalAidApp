import 'package:animal_aid_app/common/api/index.dart';
import 'package:built_collection/built_collection.dart';
import 'package:ferry/ferry.dart';
import 'package:get_it/get_it.dart';

class MainTagGroupsService {
  final Client _gqlClient = GetIt.I<Client>();

  Future<MainTagGroupsResponse> getData() async {
    final request = GMainTagGroupsReq(
      (builder) => builder..fetchPolicy = FetchPolicy.NoCache,
    );
    final response = await _gqlClient.request(request).first;
    final responseData = response.data;

    if (response.hasErrors || responseData == null) {
      return MainTagGroupsResponse(failed: true);
    }

    return MainTagGroupsResponse(data: responseData.mainTagGroups);
  }
}

class MainTagGroupsResponse {
  final BuiltList<GMainTagGroupsData_mainTagGroups> data;
  final bool failed;

  MainTagGroupsResponse({
    BuiltList<GMainTagGroupsData_mainTagGroups>? data,
    this.failed = false,
  }) : data = data ?? BuiltList();
}
