import 'dart:async';

import 'package:animal_aid_app/common/dto/operation_data.dart';
import 'package:animal_aid_app/common/dto/operation_result.dart';
import 'package:rxdart/rxdart.dart';

const String _errorMessage =
    'LatestOperationExecutor: An error occurred while executing request';

class LatestOperationExecutor<T> {
  final StreamController<OperationData<T>> _operationStreamController =
      StreamController();

  Stream<OperationResult<T>> get operationResultStream =>
      _operationStreamController.stream.switchMap(
        (operationData) => Stream.value(operationData)
            .delay(operationData.debounceDuration)
            .asyncMap(_convertOperationDataToOperationResult),
      );

  void run(OperationData<T> operationData) =>
      _operationStreamController.add(operationData);

  Future<OperationResult<T>> _convertOperationDataToOperationResult(
    OperationData<T> operationData,
  ) async {
    try {
      return OperationSuccessResult(
        result: await operationData.operation(),
        operationKey: operationData.key,
      );
    } catch (ex) {
      return OperationErrorResult(
        operationKey: operationData.key,
        error: '$_errorMessage: $ex',
      );
    }
  }
}
