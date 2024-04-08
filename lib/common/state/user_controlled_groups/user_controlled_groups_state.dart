import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'user_controlled_groups_state.g.dart';

abstract class UserControlledGroupsState
    implements
        Built<UserControlledGroupsState, UserControlledGroupsStateBuilder> {
  UserControlledGroupsState._();

  factory UserControlledGroupsState([
    void Function(UserControlledGroupsStateBuilder)? updates,
  ]) = _$UserControlledGroupsState;

  BuiltList<GUserControlledGroupsData_userControlledGroups> get data;
  LoadingStatus get loadingStatus;

  static UserControlledGroupsState empty() =>
      UserControlledGroupsState((b) => b.loadingStatus = LoadingStatus.never);
}
