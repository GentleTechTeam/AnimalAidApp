// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_posts_auto_import_management_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupPostsAutoImportManagementState
    extends GroupPostsAutoImportManagementState {
  @override
  final LoadingStatus loadingStatus;
  @override
  final bool isEnabled;

  factory _$GroupPostsAutoImportManagementState(
          [void Function(GroupPostsAutoImportManagementStateBuilder)?
              updates]) =>
      (new GroupPostsAutoImportManagementStateBuilder()..update(updates))
          ._build();

  _$GroupPostsAutoImportManagementState._(
      {required this.loadingStatus, required this.isEnabled})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        loadingStatus, 'GroupPostsAutoImportManagementState', 'loadingStatus');
    BuiltValueNullFieldError.checkNotNull(
        isEnabled, 'GroupPostsAutoImportManagementState', 'isEnabled');
  }

  @override
  GroupPostsAutoImportManagementState rebuild(
          void Function(GroupPostsAutoImportManagementStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupPostsAutoImportManagementStateBuilder toBuilder() =>
      new GroupPostsAutoImportManagementStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupPostsAutoImportManagementState &&
        loadingStatus == other.loadingStatus &&
        isEnabled == other.isEnabled;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, loadingStatus.hashCode), isEnabled.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GroupPostsAutoImportManagementState')
          ..add('loadingStatus', loadingStatus)
          ..add('isEnabled', isEnabled))
        .toString();
  }
}

class GroupPostsAutoImportManagementStateBuilder
    implements
        Builder<GroupPostsAutoImportManagementState,
            GroupPostsAutoImportManagementStateBuilder> {
  _$GroupPostsAutoImportManagementState? _$v;

  LoadingStatus? _loadingStatus;
  LoadingStatus? get loadingStatus => _$this._loadingStatus;
  set loadingStatus(LoadingStatus? loadingStatus) =>
      _$this._loadingStatus = loadingStatus;

  bool? _isEnabled;
  bool? get isEnabled => _$this._isEnabled;
  set isEnabled(bool? isEnabled) => _$this._isEnabled = isEnabled;

  GroupPostsAutoImportManagementStateBuilder();

  GroupPostsAutoImportManagementStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loadingStatus = $v.loadingStatus;
      _isEnabled = $v.isEnabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupPostsAutoImportManagementState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GroupPostsAutoImportManagementState;
  }

  @override
  void update(
      void Function(GroupPostsAutoImportManagementStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupPostsAutoImportManagementState build() => _build();

  _$GroupPostsAutoImportManagementState _build() {
    final _$result = _$v ??
        new _$GroupPostsAutoImportManagementState._(
            loadingStatus: BuiltValueNullFieldError.checkNotNull(loadingStatus,
                'GroupPostsAutoImportManagementState', 'loadingStatus'),
            isEnabled: BuiltValueNullFieldError.checkNotNull(
                isEnabled, 'GroupPostsAutoImportManagementState', 'isEnabled'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
