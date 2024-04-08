import 'dart:async';

import 'package:animal_aid_app/common/dto/operation_data.dart';
import 'package:animal_aid_app/common/dto/operation_result.dart';
import 'package:animal_aid_app/common/utils/async_helpers/latest_operation_executor.dart';
import 'package:flutter_test/flutter_test.dart';

const Duration _operationDuration = Duration(seconds: 1);
const Duration _debounceDuration = Duration(milliseconds: 800);

final Duration _wholeOperationDuration = _operationDuration + _debounceDuration;

OperationData<String> _createSuccessfulOperationData(String value) =>
    OperationData(
      operation: () => Future.delayed(_operationDuration, () => value),
      debounceDuration: _debounceDuration,
    );

OperationData<String> _createFailedOperationData(Exception ex) => OperationData(
      operation: () => Future.delayed(_operationDuration, () => throw ex),
      debounceDuration: _debounceDuration,
    );

void main() {
  group('LatestOperationExecutor test -', () {
    late LatestOperationExecutor<String> executor;

    setUp(() => executor = LatestOperationExecutor<String>());

    test('should emit the successful result', () {
      const value = 'Successful result';

      StreamSubscription<OperationResult<String>>? sub;

      sub = executor.operationResultStream.listen(expectAsync1((result) async {
        expect(result, isInstanceOf<OperationSuccessResult<String>>());
        expect((result as OperationSuccessResult<String>).result, value);

        await sub?.cancel();
      }));

      executor.run(_createSuccessfulOperationData(value));
    });

    test('should emit the failed result', () {
      final exception = Exception('Failed result');

      StreamSubscription<OperationResult<String>>? sub;

      sub = executor.operationResultStream.listen(expectAsync1((result) async {
        expect(result, isInstanceOf<OperationErrorResult<String>>());
        expect(
          (result as OperationErrorResult<String>).error.contains('$exception'),
          true,
        );

        await sub?.cancel();
      }));

      executor.run(_createFailedOperationData(exception));
    });

    test('should emit the result after delay', () {
      final now = DateTime.now().millisecondsSinceEpoch;

      StreamSubscription<OperationResult<String>>? sub;

      sub = executor.operationResultStream.listen(expectAsync1((result) async {
        expect(
          DateTime.now().millisecondsSinceEpoch,
          greaterThanOrEqualTo(now + _wholeOperationDuration.inMilliseconds),
        );
        expect(
          DateTime.now().millisecondsSinceEpoch,
          lessThan(now + (_wholeOperationDuration.inMilliseconds * 2)),
        );

        await sub?.cancel();
      }));

      executor.run(_createSuccessfulOperationData(''));
    });

    test('should emit the last operation result', () {
      const valuesToEmit = <String>[
        'First value',
        'Second value',
        'Third value',
      ];

      StreamSubscription<OperationResult<String>>? sub;

      sub = executor.operationResultStream.listen(expectAsync1((result) async {
        expect(result, isInstanceOf<OperationSuccessResult<String>>());
        expect(
          (result as OperationSuccessResult<String>).result,
          valuesToEmit.last,
        );

        await sub?.cancel();
      }));

      for (final String value in valuesToEmit) {
        executor.run(_createSuccessfulOperationData(value));
      }
    });
  });
}
