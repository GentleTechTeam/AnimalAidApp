import 'package:animal_aid_app/common/constants/hive_adapter_type_id.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'hive_post_meta.g.dart';

@HiveType(typeId: HiveAdapterTypeId.hivePostMetaAdapterTypeId)
class HivePostMeta extends HiveObject {
  @HiveField(0)
  final String groupId;
  @HiveField(1)
  final String postId;

  HivePostMeta({
    required this.groupId,
    required this.postId,
  });
}
