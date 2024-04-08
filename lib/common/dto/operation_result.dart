abstract class OperationResult<T> {
  String get operationKey;
}

class OperationSuccessResult<T> implements OperationResult<T> {
  @override
  final String operationKey;
  final T result;

  const OperationSuccessResult({
    required this.result,
    required this.operationKey,
  });
}

class OperationErrorResult<T> implements OperationResult<T> {
  @override
  final String operationKey;
  final String error;

  const OperationErrorResult({
    required this.operationKey,
    required this.error,
  });
}
