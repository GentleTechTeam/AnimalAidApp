import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:flutter/widgets.dart';

class ContentStateViewEntity<T> {
  final String emptyDataMessage;
  final String errorMessage;
  final Widget Function(T) builder;
  final LoadingStatus? loadingStatus;
  final T? data;

  const ContentStateViewEntity({
    required this.emptyDataMessage,
    required this.errorMessage,
    required this.builder,
    this.loadingStatus,
    this.data,
  });
}
