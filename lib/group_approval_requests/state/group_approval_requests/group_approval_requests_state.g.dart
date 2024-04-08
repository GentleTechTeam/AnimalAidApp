// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_approval_requests_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupApprovalRequestsState extends GroupApprovalRequestsState {
  @override
  final BuiltList<GGroupApprovalRequestsData_charityGroupsWaitingForApproval>
      data;
  @override
  final LoadingStatus loadingStatus;

  factory _$GroupApprovalRequestsState(
          [void Function(GroupApprovalRequestsStateBuilder)? updates]) =>
      (new GroupApprovalRequestsStateBuilder()..update(updates))._build();

  _$GroupApprovalRequestsState._(
      {required this.data, required this.loadingStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        data, 'GroupApprovalRequestsState', 'data');
    BuiltValueNullFieldError.checkNotNull(
        loadingStatus, 'GroupApprovalRequestsState', 'loadingStatus');
  }

  @override
  GroupApprovalRequestsState rebuild(
          void Function(GroupApprovalRequestsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupApprovalRequestsStateBuilder toBuilder() =>
      new GroupApprovalRequestsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupApprovalRequestsState &&
        data == other.data &&
        loadingStatus == other.loadingStatus;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, data.hashCode), loadingStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GroupApprovalRequestsState')
          ..add('data', data)
          ..add('loadingStatus', loadingStatus))
        .toString();
  }
}

class GroupApprovalRequestsStateBuilder
    implements
        Builder<GroupApprovalRequestsState, GroupApprovalRequestsStateBuilder> {
  _$GroupApprovalRequestsState? _$v;

  ListBuilder<GGroupApprovalRequestsData_charityGroupsWaitingForApproval>?
      _data;
  ListBuilder<GGroupApprovalRequestsData_charityGroupsWaitingForApproval>
      get data => _$this._data ??= new ListBuilder<
          GGroupApprovalRequestsData_charityGroupsWaitingForApproval>();
  set data(
          ListBuilder<
                  GGroupApprovalRequestsData_charityGroupsWaitingForApproval>?
              data) =>
      _$this._data = data;

  LoadingStatus? _loadingStatus;
  LoadingStatus? get loadingStatus => _$this._loadingStatus;
  set loadingStatus(LoadingStatus? loadingStatus) =>
      _$this._loadingStatus = loadingStatus;

  GroupApprovalRequestsStateBuilder();

  GroupApprovalRequestsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _loadingStatus = $v.loadingStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupApprovalRequestsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GroupApprovalRequestsState;
  }

  @override
  void update(void Function(GroupApprovalRequestsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupApprovalRequestsState build() => _build();

  _$GroupApprovalRequestsState _build() {
    _$GroupApprovalRequestsState _$result;
    try {
      _$result = _$v ??
          new _$GroupApprovalRequestsState._(
              data: data.build(),
              loadingStatus: BuiltValueNullFieldError.checkNotNull(
                  loadingStatus,
                  'GroupApprovalRequestsState',
                  'loadingStatus'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GroupApprovalRequestsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
