import 'package:flutter/material.dart';

class OperationStatusHandler {
  final VoidCallback onLoading;
  final VoidCallback onSuccess;
  final VoidCallback onError;

  OperationStatusHandler({
    required this.onLoading,
    required this.onSuccess,
    required this.onError,
  });
}
