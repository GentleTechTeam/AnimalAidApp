import 'package:reflectable/reflectable.dart';

// Reflection is provided via a subclass of the class Reflectable
// (we use the term hiveAdapterTypeIdReflector to designate an instance of such a subclass)
class HiveAdapterTypeIdReflector extends Reflectable {
  const HiveAdapterTypeIdReflector()
      : super(
          staticInvokeCapability,
          declarationsCapability,
        );
}

const hiveAdapterTypeIdReflector = HiveAdapterTypeIdReflector();

@hiveAdapterTypeIdReflector
class HiveAdapterTypeId {
  static const hivePostMetaAdapterTypeId = 0;
}
