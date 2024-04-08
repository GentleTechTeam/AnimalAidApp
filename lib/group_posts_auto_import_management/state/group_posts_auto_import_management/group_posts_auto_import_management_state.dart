import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:built_value/built_value.dart';

part 'group_posts_auto_import_management_state.g.dart';

abstract class GroupPostsAutoImportManagementState
    implements
        Built<GroupPostsAutoImportManagementState,
            GroupPostsAutoImportManagementStateBuilder> {
  GroupPostsAutoImportManagementState._();

  factory GroupPostsAutoImportManagementState([
    void Function(GroupPostsAutoImportManagementStateBuilder)? updates,
  ]) = _$GroupPostsAutoImportManagementState;

  LoadingStatus get loadingStatus;
  bool get isEnabled;

  static GroupPostsAutoImportManagementState empty() =>
      GroupPostsAutoImportManagementState((b) => b
        ..loadingStatus = LoadingStatus.never
        ..isEnabled = false);
}
