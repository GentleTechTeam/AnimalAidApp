import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'group_posts_internal_state.g.dart';

abstract class GroupPostsInternalState
    implements Built<GroupPostsInternalState, GroupPostsInternalStateBuilder> {
  GroupPostsInternalState._();

  factory GroupPostsInternalState([
    void Function(GroupPostsInternalStateBuilder)? updates,
  ]) = _$GroupPostsInternalState;

  BuiltList<String> get groupPostIds;
  BuiltMap<String, GGroupPostsData_groupPosts_items> get groupPostsData;
  LoadingStatus get loadingStatus;
  BuiltMap<String, bool> get userPostLocalDecisions;

  static GroupPostsInternalState empty() => GroupPostsInternalState((b) {
        b.loadingStatus = LoadingStatus.never;
      });
}
