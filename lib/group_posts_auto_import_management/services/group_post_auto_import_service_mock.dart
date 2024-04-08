import 'package:animal_aid_app/group_posts_auto_import_management/services/group_post_auto_import_service.dart';

class GroupPostAutoImportServiceMock extends GroupPostAutoImportService {
  @override
  Future<AutoImportHintResponse> getAutoImportHint() async =>
      AutoImportHintResponse(
        hint: 'Mock Hint',
      );

  @override
  Future<AutoImportStatusResponse> getAutoImportStatus({
    required String groupId,
  }) async =>
      AutoImportStatusResponse(
        enabled: true,
      );

  @override
  Future<AutoImportStatusResponse> enableAutoImport({
    required String groupId,
  }) async =>
      AutoImportStatusResponse(
        enabled: true,
      );
}
