import 'dart:async';
import 'dart:developer';

import 'package:animal_aid_app/common/constants/durations.dart';
import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/common/dto/operation_data.dart';
import 'package:animal_aid_app/common/dto/operation_result.dart';
import 'package:animal_aid_app/common/services/location_service/location_service.dart';
import 'package:animal_aid_app/common/state/searchable_locations/searchable_locations_state.dart';
import 'package:animal_aid_app/common/utils/async_helpers/latest_operation_executor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class SearchableLocationsCubit extends Cubit<SearchableLocationsState> {
  final _service = GetIt.I<LocationService>();
  final _latestOperationExecutor =
      LatestOperationExecutor<LocationSearchResult>();

  StreamSubscription? _operationResultSubscription;

  SearchableLocationsCubit() : super(SearchableLocationsState.initial()) {
    _operationResultSubscription = _latestOperationExecutor
        .operationResultStream
        .listen((operationResult) {
      if (operationResult is OperationSuccessResult<LocationSearchResult>) {
        _handleOperationResult(operationResult.result);
      }

      if (operationResult is OperationErrorResult<LocationSearchResult>) {
        _handleOperationError(error: operationResult.error);
      }
    });
  }

  void getLocations(
    String query, {
    bool debounce = true,
  }) {
    emit(
      state.copyWith(loadingStatus: LoadingStatus.loading),
    );

    _latestOperationExecutor.run(OperationData(
      operation: () => _service.searchLocations(query),
      debounceDuration: debounce
          ? Durations.requestAfterInputDebounceDuration
          : Duration.zero,
    ));
  }

  @override
  Future<void> close() {
    _operationResultSubscription?.cancel();

    return super.close();
  }

  void _handleOperationResult(LocationSearchResult locationSearchResult) {
    if (locationSearchResult.failed) {
      _handleOperationError();

      return;
    }

    emit(
      state.copyWith(
        loadingStatus: LoadingStatus.done,
        locations: locationSearchResult.locations.toBuiltList(),
      ),
    );
  }

  void _handleOperationError({String? error}) {
    if (error != null) {
      log('$error\nStackTrace: ${StackTrace.current}}');
    }

    emit(
      state.copyWith(loadingStatus: LoadingStatus.error),
    );
  }
}
