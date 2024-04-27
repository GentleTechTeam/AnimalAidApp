import 'package:animal_aid_app/common/constants/hive_box_name.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveService {
  Future<Box<T>> getBox<T>({
    required HiveBoxName boxName,
    required TypeAdapter<T> adapter,
  }) async {
    Hive.registerAdapter(
      adapter,
      override: true,
    );

    if (!Hive.isBoxOpen(boxName.name)) {
      // ignore: avoid-ignoring-return-values
      await Hive.openBox<T>(boxName.name);
    }

    return Hive.box<T>(boxName.name);
  }

  Future<void> init() async {
    await Hive.initFlutter();
  }
}
