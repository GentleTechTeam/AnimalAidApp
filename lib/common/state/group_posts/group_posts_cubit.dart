import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/common/dto/operation_status_handler.dart';
import 'package:animal_aid_app/common/services/group_posts_service_mock.dart';
import 'package:animal_aid_app/common/state/group_posts/group_posts_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GroupPostsCubit extends Cubit<GroupPostsState> {
  final _service = GroupPostsServiceMock();
  final String _groupId;

  GroupPostsCubit({required String groupId})
      : _groupId = groupId,
        super(GroupPostsState()) {
    getData();
  }

  Future<void> getData() async {
    emit(GroupPostsState().rebuildWithLoadingStatus(LoadingStatus.loading));

    final result = await _service.getData(groupId: _groupId);

    if (result.failed) {
      emit(state.rebuildWithLoadingStatus(LoadingStatus.error));

      return;
    }

    emit(GroupPostsState.fromApiData(
      rawData: result.data,
    ));
  }

  void togglePostDecision({required String id, required bool value}) {
    emit(state.rebuildWithNewPostDecision(id: id, newValue: value));
  }

  void selectAll() {
    emit(state.rebuildAndToggleSelectAll());
  }

  Future<void> requestSaveData({
    required OperationStatusHandler statusHandler,
  }) async {
    if (!state.hasLocalDecisions) {
      return;
    }

    statusHandler.onLoading();

    final result = await _service.requestSaveData(
      decisions: state.generateTogglePostsPayload(_groupId),
    );

    if (result.failed) {
      statusHandler.onError();

      return;
    }

    emit(state.rebuildWithAppliedUserPostDecisions());
    statusHandler.onSuccess();
  }

  Future<void> requestAssignTagToPost({
    required OperationStatusHandler operationStatusHandler,
    required String postId,
    required String tag,
  }) async {
    operationStatusHandler.onLoading();

    final result = await _service.requestAssignTagToPost(
      groupId: _groupId,
      postId: postId,
      tag: tag,
    );

    if (result.failed) {
      operationStatusHandler.onError();

      return;
    }

    emit(state.rebuildWithPostData(result.updatedPostData));
    operationStatusHandler.onSuccess();
  }

  Future<void> requestDeleteTagFromPost({
    required OperationStatusHandler operationStatusHandler,
    required String postId,
    required String tag,
  }) async {
    operationStatusHandler.onLoading();

    final result = await _service.requestDeleteTagFromPost(
      groupId: _groupId,
      postId: postId,
      tag: tag,
    );

    if (result.failed) {
      operationStatusHandler.onError();

      return;
    }

    emit(state.rebuildWithPostData(result.updatedPostData));
    operationStatusHandler.onSuccess();
  }
}
