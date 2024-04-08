// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_posts_internal_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupPostsInternalState extends GroupPostsInternalState {
  @override
  final BuiltList<String> groupPostIds;
  @override
  final BuiltMap<String, GGroupPostsData_groupPosts_items> groupPostsData;
  @override
  final LoadingStatus loadingStatus;
  @override
  final BuiltMap<String, bool> userPostLocalDecisions;

  factory _$GroupPostsInternalState(
          [void Function(GroupPostsInternalStateBuilder)? updates]) =>
      (new GroupPostsInternalStateBuilder()..update(updates))._build();

  _$GroupPostsInternalState._(
      {required this.groupPostIds,
      required this.groupPostsData,
      required this.loadingStatus,
      required this.userPostLocalDecisions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        groupPostIds, 'GroupPostsInternalState', 'groupPostIds');
    BuiltValueNullFieldError.checkNotNull(
        groupPostsData, 'GroupPostsInternalState', 'groupPostsData');
    BuiltValueNullFieldError.checkNotNull(
        loadingStatus, 'GroupPostsInternalState', 'loadingStatus');
    BuiltValueNullFieldError.checkNotNull(userPostLocalDecisions,
        'GroupPostsInternalState', 'userPostLocalDecisions');
  }

  @override
  GroupPostsInternalState rebuild(
          void Function(GroupPostsInternalStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupPostsInternalStateBuilder toBuilder() =>
      new GroupPostsInternalStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupPostsInternalState &&
        groupPostIds == other.groupPostIds &&
        groupPostsData == other.groupPostsData &&
        loadingStatus == other.loadingStatus &&
        userPostLocalDecisions == other.userPostLocalDecisions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, groupPostIds.hashCode), groupPostsData.hashCode),
            loadingStatus.hashCode),
        userPostLocalDecisions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GroupPostsInternalState')
          ..add('groupPostIds', groupPostIds)
          ..add('groupPostsData', groupPostsData)
          ..add('loadingStatus', loadingStatus)
          ..add('userPostLocalDecisions', userPostLocalDecisions))
        .toString();
  }
}

class GroupPostsInternalStateBuilder
    implements
        Builder<GroupPostsInternalState, GroupPostsInternalStateBuilder> {
  _$GroupPostsInternalState? _$v;

  ListBuilder<String>? _groupPostIds;
  ListBuilder<String> get groupPostIds =>
      _$this._groupPostIds ??= new ListBuilder<String>();
  set groupPostIds(ListBuilder<String>? groupPostIds) =>
      _$this._groupPostIds = groupPostIds;

  MapBuilder<String, GGroupPostsData_groupPosts_items>? _groupPostsData;
  MapBuilder<String, GGroupPostsData_groupPosts_items> get groupPostsData =>
      _$this._groupPostsData ??=
          new MapBuilder<String, GGroupPostsData_groupPosts_items>();
  set groupPostsData(
          MapBuilder<String, GGroupPostsData_groupPosts_items>?
              groupPostsData) =>
      _$this._groupPostsData = groupPostsData;

  LoadingStatus? _loadingStatus;
  LoadingStatus? get loadingStatus => _$this._loadingStatus;
  set loadingStatus(LoadingStatus? loadingStatus) =>
      _$this._loadingStatus = loadingStatus;

  MapBuilder<String, bool>? _userPostLocalDecisions;
  MapBuilder<String, bool> get userPostLocalDecisions =>
      _$this._userPostLocalDecisions ??= new MapBuilder<String, bool>();
  set userPostLocalDecisions(
          MapBuilder<String, bool>? userPostLocalDecisions) =>
      _$this._userPostLocalDecisions = userPostLocalDecisions;

  GroupPostsInternalStateBuilder();

  GroupPostsInternalStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupPostIds = $v.groupPostIds.toBuilder();
      _groupPostsData = $v.groupPostsData.toBuilder();
      _loadingStatus = $v.loadingStatus;
      _userPostLocalDecisions = $v.userPostLocalDecisions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupPostsInternalState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GroupPostsInternalState;
  }

  @override
  void update(void Function(GroupPostsInternalStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupPostsInternalState build() => _build();

  _$GroupPostsInternalState _build() {
    _$GroupPostsInternalState _$result;
    try {
      _$result = _$v ??
          new _$GroupPostsInternalState._(
              groupPostIds: groupPostIds.build(),
              groupPostsData: groupPostsData.build(),
              loadingStatus: BuiltValueNullFieldError.checkNotNull(
                  loadingStatus, 'GroupPostsInternalState', 'loadingStatus'),
              userPostLocalDecisions: userPostLocalDecisions.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groupPostIds';
        groupPostIds.build();
        _$failedField = 'groupPostsData';
        groupPostsData.build();

        _$failedField = 'userPostLocalDecisions';
        userPostLocalDecisions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GroupPostsInternalState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
