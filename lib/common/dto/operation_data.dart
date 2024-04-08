class OperationData<T> {
  final Future<T> Function() operation;
  final Duration debounceDuration;
  final String key;

  const OperationData({
    required this.operation,
    required this.debounceDuration,
    this.key = '',
  });
}
