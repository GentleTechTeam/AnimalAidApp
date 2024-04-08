import 'package:animal_aid_app/common/api/index.dart';
import 'package:ferry/ferry.dart';
import 'package:get_it/get_it.dart';

class GroupPostAutoImportService {
  final Client _gqlClient = GetIt.I<Client>();

  Future<AutoImportHintResponse> getAutoImportHint() async {
    final request = GGroupPostsAutoImportHintReq(
      (builder) => builder..fetchPolicy = FetchPolicy.NoCache,
    );
    final response = await _gqlClient.request(request).first;
    final responseData = response.data;

    if (response.hasErrors || responseData == null) {
      return AutoImportHintResponse(failed: true);
    }

    return AutoImportHintResponse(hint: responseData.groupPostsAutoImportHint);
  }

  Future<AutoImportStatusResponse> getAutoImportStatus({
    required String groupId,
  }) async {
    final request = GGroupPostsAutoImportEnabledStatusReq((b) => b
      ..fetchPolicy = FetchPolicy.NoCache
      ..vars.groupId = groupId);
    final response = await _gqlClient.request(request).first;
    final responseData = response.data;

    if (response.hasErrors || responseData == null) {
      return AutoImportStatusResponse(failed: true);
    }

    return AutoImportStatusResponse(
      enabled: responseData.groupPostsAutoImportEnabledStatus,
    );
  }

  Future<AutoImportStatusResponse> enableAutoImport({
    required String groupId,
  }) async {
    final request = GEnableGroupPostsAutoImportReq((builder) => builder
      ..fetchPolicy = FetchPolicy.NoCache
      ..vars.groupId = groupId);

    final response = await _gqlClient.request(request).first;
    final responseData = response.data;

    if (response.hasErrors ||
        responseData == null ||
        !responseData.enableGroupPostsAutoImport) {
      return AutoImportStatusResponse(failed: true);
    }

    return AutoImportStatusResponse(
      enabled: responseData.enableGroupPostsAutoImport,
    );
  }
}

class AutoImportHintResponse {
  final String hint;
  final bool failed;

  AutoImportHintResponse({
    this.hint = '',
    this.failed = false,
  });
}

class AutoImportStatusResponse {
  final bool enabled;
  final bool failed;

  AutoImportStatusResponse({
    this.enabled = false,
    this.failed = false,
  });
}
