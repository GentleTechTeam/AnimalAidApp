// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_tag_groups_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MainTagGroupsState extends MainTagGroupsState {
  @override
  final LoadingStatus loadingStatus;
  @override
  final BuiltList<GMainTagGroupsData_mainTagGroups> data;

  factory _$MainTagGroupsState(
          [void Function(MainTagGroupsStateBuilder)? updates]) =>
      (new MainTagGroupsStateBuilder()..update(updates))._build();

  _$MainTagGroupsState._({required this.loadingStatus, required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        loadingStatus, 'MainTagGroupsState', 'loadingStatus');
    BuiltValueNullFieldError.checkNotNull(data, 'MainTagGroupsState', 'data');
  }

  @override
  MainTagGroupsState rebuild(
          void Function(MainTagGroupsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MainTagGroupsStateBuilder toBuilder() =>
      new MainTagGroupsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MainTagGroupsState &&
        loadingStatus == other.loadingStatus &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, loadingStatus.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MainTagGroupsState')
          ..add('loadingStatus', loadingStatus)
          ..add('data', data))
        .toString();
  }
}

class MainTagGroupsStateBuilder
    implements Builder<MainTagGroupsState, MainTagGroupsStateBuilder> {
  _$MainTagGroupsState? _$v;

  LoadingStatus? _loadingStatus;
  LoadingStatus? get loadingStatus => _$this._loadingStatus;
  set loadingStatus(LoadingStatus? loadingStatus) =>
      _$this._loadingStatus = loadingStatus;

  ListBuilder<GMainTagGroupsData_mainTagGroups>? _data;
  ListBuilder<GMainTagGroupsData_mainTagGroups> get data =>
      _$this._data ??= new ListBuilder<GMainTagGroupsData_mainTagGroups>();
  set data(ListBuilder<GMainTagGroupsData_mainTagGroups>? data) =>
      _$this._data = data;

  MainTagGroupsStateBuilder();

  MainTagGroupsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loadingStatus = $v.loadingStatus;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MainTagGroupsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MainTagGroupsState;
  }

  @override
  void update(void Function(MainTagGroupsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MainTagGroupsState build() => _build();

  _$MainTagGroupsState _build() {
    _$MainTagGroupsState _$result;
    try {
      _$result = _$v ??
          new _$MainTagGroupsState._(
              loadingStatus: BuiltValueNullFieldError.checkNotNull(
                  loadingStatus, 'MainTagGroupsState', 'loadingStatus'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MainTagGroupsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
