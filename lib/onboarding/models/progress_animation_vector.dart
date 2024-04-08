import 'package:animal_aid_app/common/utils/value_in_range.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ProgressAnimationVector extends Equatable {
  final double from;
  final double to;

  @visibleForTesting
  const ProgressAnimationVector({
    required this.from,
    required this.to,
  });

  factory ProgressAnimationVector.calc({
    required int pageNumber,
    required int lastPageNumber,
    required int pageLength,
  }) {
    if (pageLength == 0) {
      return const ProgressAnimationVector(
        from: 0,
        to: 0,
      );
    }

    return ProgressAnimationVector(
      from: valueInRange(
        from: 0,
        to: 1,
        value: lastPageNumber / pageLength,
      ),
      to: valueInRange(
        from: 0,
        to: 1,
        value: pageNumber / pageLength,
      ),
    );
  }

  @override
  List<double> get props => [from, to];
}
