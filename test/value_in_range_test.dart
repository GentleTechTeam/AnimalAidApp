import 'package:animal_aid_app/common/utils/value_in_range.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('valueInRange', () {
    test(
        'Works correctly when FROM value is less than TO value and target value is below the range',
        () {
      expect(valueInRange(from: 0, to: 1, value: -10), 0);
    });
    test(
        'Works correctly when FROM value is less than TO value and target value is under the range',
        () {
      expect(valueInRange(from: 0, to: 1, value: 10), 1);
    });
    test(
        'Works correctly when FROM value is less than TO value and target value is in range',
        () {
      expect(valueInRange(from: 0, to: 1, value: 0.5), 0.5);
    });
    test(
        'Works correctly when FROM value greater than TO value and target value is in range',
        () {
      expect(valueInRange(from: 1, to: 0, value: 0.5), 0.5);
    });
    test(
        'Works correctly when FROM value greater than TO value and target value is below the range',
        () {
      expect(valueInRange(from: 1, to: 0, value: -10), 0);
    });
    test(
        'Works correctly when FROM value greater than TO value and target value is under the range',
        () {
      expect(valueInRange(from: 1, to: 0, value: 10), 1);
    });
    test('Works correctly when FROM value equals TO value', () {
      expect(valueInRange(from: 1, to: 1, value: 0), 1);
    });
  });
}
