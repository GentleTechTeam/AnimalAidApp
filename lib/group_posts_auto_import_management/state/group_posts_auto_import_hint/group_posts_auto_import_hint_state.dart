import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:built_value/built_value.dart';

part 'group_posts_auto_import_hint_state.g.dart';

abstract class GroupPostsAutoImportHintState
    implements
        Built<GroupPostsAutoImportHintState,
            GroupPostsAutoImportHintStateBuilder> {
  GroupPostsAutoImportHintState._();

  factory GroupPostsAutoImportHintState([
    void Function(GroupPostsAutoImportHintStateBuilder)? updates,
  ]) = _$GroupPostsAutoImportHintState;

  LoadingStatus get loadingStatus;
  String get hint;

  static GroupPostsAutoImportHintState empty() => GroupPostsAutoImportHintState(
        (b) => b
          ..loadingStatus = LoadingStatus.never
          ..hint = '',
      );
}
