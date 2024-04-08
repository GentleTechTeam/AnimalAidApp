import 'package:animal_aid_app/common/constants/hive_adapter_type_id.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reflectable/reflectable.dart';

import 'hive_adapter_type_id_test.reflectable.dart';

void main() {
  late ClassMirror mirror;
  setUp(() {
    initializeReflectable();
    mirror = hiveAdapterTypeIdReflector.reflectType(
      HiveAdapterTypeId,
    ) as ClassMirror;
  });

  group('Hive adapter type id', () {
    test('all ids are unique', () {
      final allAdapterIds = mirror.declarations.values
          .map((value) => mirror.invokeGetter(value.simpleName))
          .toList();

      expect(
        allAdapterIds.toSet().length,
        allAdapterIds.length,
      );
    });
    test('id less 223 position (to meet hive library requirements)', () {
      for (final adapterId in mirror.declarations.values) {
        expect(mirror.invokeGetter(adapterId.simpleName) as int <= 223, true);
      }
    });
  });
}
