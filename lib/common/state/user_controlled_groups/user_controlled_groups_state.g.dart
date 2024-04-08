// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_controlled_groups_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserControlledGroupsState extends UserControlledGroupsState {
  @override
  final BuiltList<GUserControlledGroupsData_userControlledGroups> data;
  @override
  final LoadingStatus loadingStatus;

  factory _$UserControlledGroupsState(
          [void Function(UserControlledGroupsStateBuilder)? updates]) =>
      (new UserControlledGroupsStateBuilder()..update(updates))._build();

  _$UserControlledGroupsState._(
      {required this.data, required this.loadingStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        data, 'UserControlledGroupsState', 'data');
    BuiltValueNullFieldError.checkNotNull(
        loadingStatus, 'UserControlledGroupsState', 'loadingStatus');
  }

  @override
  UserControlledGroupsState rebuild(
          void Function(UserControlledGroupsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserControlledGroupsStateBuilder toBuilder() =>
      new UserControlledGroupsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserControlledGroupsState &&
        data == other.data &&
        loadingStatus == other.loadingStatus;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, data.hashCode), loadingStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserControlledGroupsState')
          ..add('data', data)
          ..add('loadingStatus', loadingStatus))
        .toString();
  }
}

class UserControlledGroupsStateBuilder
    implements
        Builder<UserControlledGroupsState, UserControlledGroupsStateBuilder> {
  _$UserControlledGroupsState? _$v;

  ListBuilder<GUserControlledGroupsData_userControlledGroups>? _data;
  ListBuilder<GUserControlledGroupsData_userControlledGroups> get data =>
      _$this._data ??=
          new ListBuilder<GUserControlledGroupsData_userControlledGroups>();
  set data(ListBuilder<GUserControlledGroupsData_userControlledGroups>? data) =>
      _$this._data = data;

  LoadingStatus? _loadingStatus;
  LoadingStatus? get loadingStatus => _$this._loadingStatus;
  set loadingStatus(LoadingStatus? loadingStatus) =>
      _$this._loadingStatus = loadingStatus;

  UserControlledGroupsStateBuilder();

  UserControlledGroupsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _loadingStatus = $v.loadingStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserControlledGroupsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserControlledGroupsState;
  }

  @override
  void update(void Function(UserControlledGroupsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserControlledGroupsState build() => _build();

  _$UserControlledGroupsState _build() {
    _$UserControlledGroupsState _$result;
    try {
      _$result = _$v ??
          new _$UserControlledGroupsState._(
              data: data.build(),
              loadingStatus: BuiltValueNullFieldError.checkNotNull(
                  loadingStatus, 'UserControlledGroupsState', 'loadingStatus'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserControlledGroupsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
