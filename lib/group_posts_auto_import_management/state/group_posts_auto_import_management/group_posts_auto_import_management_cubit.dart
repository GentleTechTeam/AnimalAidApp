import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/common/dto/operation_status_handler.dart';
import 'package:animal_aid_app/group_posts_auto_import_management/services/group_post_auto_import_service_mock.dart';
import 'package:animal_aid_app/group_posts_auto_import_management/state/group_posts_auto_import_management/group_posts_auto_import_management_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GroupPostsAutoImportManagementCubit
    extends Cubit<GroupPostsAutoImportManagementState> {
  final _service = GroupPostAutoImportServiceMock();
  final String _groupId;

  GroupPostsAutoImportManagementCubit({required String groupId})
      : _groupId = groupId,
        super(GroupPostsAutoImportManagementState.empty()) {
    _getStatus();
  }

  Future<void> enableAutoImport(
    OperationStatusHandler operationStatusHandler,
  ) async {
    operationStatusHandler.onLoading();
    emit(state.rebuild((b) => b..loadingStatus = LoadingStatus.loading));

    final result = await _service.enableAutoImport(groupId: _groupId);

    if (result.failed) {
      emit(state.rebuild((b) => b..loadingStatus = LoadingStatus.error));
      operationStatusHandler.onError();

      return;
    }

    operationStatusHandler.onSuccess();
    emit(
      GroupPostsAutoImportManagementState((b) => b
        ..loadingStatus = LoadingStatus.done
        ..isEnabled = result.enabled),
    );
  }

  Future<void> _getStatus() async {
    emit(state.rebuild((b) => b..loadingStatus = LoadingStatus.loading));

    final result = await _service.getAutoImportStatus(groupId: _groupId);

    if (result.failed) {
      emit(state.rebuild((b) => b..loadingStatus = LoadingStatus.error));

      return;
    }

    emit(
      GroupPostsAutoImportManagementState((b) => b
        ..loadingStatus = LoadingStatus.done
        ..isEnabled = result.enabled),
    );
  }
}
