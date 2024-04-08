import 'dart:async';
import 'dart:developer';

import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/common/dto/operation_data.dart';
import 'package:animal_aid_app/common/dto/operation_result.dart';
import 'package:animal_aid_app/common/utils/async_helpers/latest_operation_executor.dart';
import 'package:animal_aid_app/posts_feed/services/posts_feed_service.dart';
import 'package:animal_aid_app/posts_feed/services/posts_feed_service_mock.dart';
import 'package:animal_aid_app/posts_feed/state/posts_feed/posts_feed_state.dart';
import 'package:animal_aid_app/posts_feed/state/posts_feed/request_page_payload.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const _firstPageOperationKey = 'FIRST_PAGE_OPERATION_KEY';

class PostsFeedCubit extends Cubit<PostsFeedState> {
  final Duration updateDataDebounceDuration;
  final String? tagGroupId;
  final String? tagKey;
  final _service = PostsFeedServiceMock();
  final _latestOperationExecutor = LatestOperationExecutor<PostsFeedResponse>();

  StreamSubscription? _operationResultSubscription;

  PostsFeedCubit({
    required this.updateDataDebounceDuration,
    this.tagGroupId,
    this.tagKey,
  }) : super(PostsFeedState.initial()) {
    _operationResultSubscription = _initializeOperationExecutor();
  }

  void requestPage(RequestPagePayload payload) {
    if (payload.reload) {
      _requestFirstPage(payload.locationKey);

      return;
    }

    _requestNextPage(payload.locationKey);
  }

  @override
  Future<void> close() {
    _operationResultSubscription?.cancel();

    return super.close();
  }

  StreamSubscription _initializeOperationExecutor() =>
      _latestOperationExecutor.operationResultStream.listen((operationResult) {
        final isFirstPage =
            operationResult.operationKey == _firstPageOperationKey;

        if (operationResult is OperationSuccessResult<PostsFeedResponse>) {
          _handleOperationResult(
            result: operationResult.result,
            isFirstPage: isFirstPage,
          );
        }

        if (operationResult is OperationErrorResult<PostsFeedResponse>) {
          _handleOperationError(isFirstPage, error: operationResult.error);
        }
      });

  void _requestFirstPage(String? locationKey) {
    emit(PostsFeedState.initial());

    _latestOperationExecutor.run(OperationData(
      operation: () => _service.getData(
        tagGroupId: tagGroupId,
        tagKey: tagKey,
        locationKey: locationKey,
      ),
      debounceDuration: updateDataDebounceDuration,
      key: _firstPageOperationKey,
    ));
  }

  void _requestNextPage(String? locationKey) {
    if (!state.hasMoreItemsToLoad ||
        state.loadingMoreStatus == LoadingStatus.loading) {
      return;
    }

    emit(state.copyWith(loadingMoreStatus: LoadingStatus.loading));

    _latestOperationExecutor.run(OperationData(
      operation: () => _service.getData(
        tagGroupId: tagGroupId,
        locationKey: locationKey,
        fromDate: DateTime.parse(state.data.last.creationDate),
      ),
      debounceDuration: updateDataDebounceDuration,
    ));
  }

  void _handleOperationResult({
    required PostsFeedResponse result,
    required bool isFirstPage,
  }) {
    if (result.failed) {
      _handleOperationError(isFirstPage);

      return;
    }

    if (isFirstPage) {
      emit(state.copyWith(
        loadingStatus: LoadingStatus.done,
        hasMoreItemsToLoad: result.hasMoreToLoad,
        data: result.data.toBuiltList(),
      ));

      return;
    }

    emit(state.copyWith(
      data: _addNextItems(result.data),
      loadingMoreStatus: LoadingStatus.done,
      hasMoreItemsToLoad: result.hasMoreToLoad,
    ));
  }

  void _handleOperationError(bool isFirstPage, {String? error}) {
    if (error != null) {
      log('$error\nStackTrace: ${StackTrace.current}}');
    }

    emit(
      isFirstPage
          ? state.copyWith(loadingStatus: LoadingStatus.error)
          : state.copyWith(loadingMoreStatus: LoadingStatus.error),
    );
  }

  BuiltList<GPostsFeedData_postsFeed_items> _addNextItems(
    BuiltList<GPostsFeedData_postsFeed_items> items,
  ) {
    final listBuilder = state.data.toBuilder()..addAll(items);

    return listBuilder.build();
  }
}
