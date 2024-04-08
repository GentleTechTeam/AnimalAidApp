import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'main_tag_groups_state.g.dart';

abstract class MainTagGroupsState
    implements Built<MainTagGroupsState, MainTagGroupsStateBuilder> {
  MainTagGroupsState._();

  factory MainTagGroupsState([
    void Function(MainTagGroupsStateBuilder)? updates,
  ]) = _$MainTagGroupsState;

  LoadingStatus get loadingStatus;
  BuiltList<GMainTagGroupsData_mainTagGroups> get data;

  static MainTagGroupsState empty() =>
      MainTagGroupsState((b) => b.loadingStatus = LoadingStatus.never);
}
