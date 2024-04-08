import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/common/state/group_posts/group_posts_internal_state.dart';
import 'package:built_collection/built_collection.dart';

class GroupPostsState {
  final GroupPostsInternalState _internalState;

  GroupPostsState({GroupPostsInternalState? state})
      : _internalState = state ?? GroupPostsInternalState.empty();

  factory GroupPostsState.fromApiData({
    required Iterable<GGroupPostsData_groupPosts_items> rawData,
  }) {
    final ids = rawData.map((item) => item.id);
    final data = rawData.fold(<String, GGroupPostsData_groupPosts_items>{}, (
      Map<String, GGroupPostsData_groupPosts_items> acc,
      item,
    ) {
      acc[item.id] = item;

      return acc;
    });

    return GroupPostsState(
      state: GroupPostsInternalState((b) {
        b.groupPostIds.replace(ids);
        b.groupPostsData.replace(data);
        b.loadingStatus = LoadingStatus.done;
      }),
    );
  }

  int get groupPostsCount => _internalState.groupPostIds.length;

  LoadingStatus get loadingStatus => _internalState.loadingStatus;

  bool get allItemsSelected {
    var result = true;
    _internalState.groupPostsData.forEach((id, post) {
      if (!result) {
        return;
      }

      final localDecision = _internalState.userPostLocalDecisions[id];
      result = localDecision ?? post.published;
    });

    return result;
  }

  bool get hasLocalDecisions =>
      _internalState.userPostLocalDecisions.isNotEmpty;

  GGroupPostsData_groupPosts_items? getItemByIndex(int index) {
    final id = _internalState.groupPostIds[index];

    return getItemById(id);
  }

  GGroupPostsData_groupPosts_items? getItemById(String id) =>
      _internalState.groupPostsData[id];

  bool getItemPublishedStatus(String id) {
    final localDecision = _internalState.userPostLocalDecisions[id];

    return localDecision ?? (getItemById(id)?.published ?? false);
  }

  GroupPostsState rebuildWithAppliedUserPostDecisions() {
    final updatedData = _getGroupsWithAppliedDecisions();

    return GroupPostsState(
      state: _internalState.rebuild((b) {
        b
          ..groupPostsData.replace(updatedData)
          ..userPostLocalDecisions.clear();
      }),
    );
  }

  GroupPostsState rebuildWithLoadingStatus(LoadingStatus loadingStatus) =>
      GroupPostsState(
        state: _internalState.rebuild(
          (b) => b..loadingStatus = loadingStatus,
        ),
      );

  GroupPostsState rebuildAndToggleSelectAll() {
    final updatedDecisions = _compileToggledSelectAllDecisions();

    return GroupPostsState(
      state: _internalState.rebuild(
        (b) => b..userPostLocalDecisions.replace(updatedDecisions),
      ),
    );
  }

  GroupPostsState rebuildWithNewPostDecision({
    required String id,
    required bool newValue,
  }) {
    final updatedDecisions = _compilePostDecisionsBasedOnNewValue(
      _internalState.userPostLocalDecisions,
      id,
      newValue,
    );

    return GroupPostsState(
      state: _internalState.rebuild(
        (b) => b..userPostLocalDecisions.replace(updatedDecisions),
      ),
    );
  }

  GroupPostsState rebuildWithPostData(
    GGroupPostsData_groupPosts_items postData,
  ) =>
      GroupPostsState(
        state: _internalState.rebuild((b) => b
          ..groupPostsData.updateValue(
            postData.id,
            (_oldValue) => postData,
          )),
      );

  List<GTogglePostsInFeedPayload> generateTogglePostsPayload(String groupId) =>
      _internalState.userPostLocalDecisions.entries
          .fold<List<GTogglePostsInFeedPayload>>([], (result, entry) {
        final nextPayloadItem = GTogglePostsInFeedPayload((b) => b
          ..groupId = groupId
          ..postId = entry.key
          ..enabled = entry.value);

        result.add(nextPayloadItem);

        return result;
      });

  BuiltMap<String, GGroupPostsData_groupPosts_items?>
      _getGroupsWithAppliedDecisions() => _internalState.userPostLocalDecisions
              .toMap()
              .entries
              .fold<BuiltMap<String, GGroupPostsData_groupPosts_items?>>(
            _internalState.groupPostsData,
            (acc, entry) {
              final id = entry.key;
              final decision = entry.value;
              final savedItem = _internalState.groupPostsData[id];
              final updatedItem = savedItem?.rebuild(
                (b) => b..published = decision,
              );

              return acc.rebuild((b) => b[id] = updatedItem);
            },
          );

  BuiltMap<String, bool> _compileToggledSelectAllDecisions() {
    if (allItemsSelected) {
      return _internalState.groupPostIds.fold(
        BuiltMap<String, bool>(),
        (acc, id) => _compilePostDecisionsBasedOnNewValue(
          acc,
          id,
          false,
        ),
      );
    }

    return _internalState.groupPostIds.fold(
      BuiltMap<String, bool>(),
      (acc, id) => _compilePostDecisionsBasedOnNewValue(
        acc,
        id,
        true,
      ),
    );
  }

  BuiltMap<String, bool> _compilePostDecisionsBasedOnNewValue(
    BuiltMap<String, bool> currentDecisions,
    String id,
    bool newValue,
  ) {
    final postStatusFromApi = _internalState.groupPostsData[id]?.published;
    final nextStatus = newValue;

    return nextStatus == postStatusFromApi
        ? currentDecisions.rebuild((b) => b.remove(id))
        : currentDecisions.rebuild((b) => b[id] = nextStatus);
  }
}
