// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_posts_auto_import_hint_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupPostsAutoImportHintState extends GroupPostsAutoImportHintState {
  @override
  final LoadingStatus loadingStatus;
  @override
  final String hint;

  factory _$GroupPostsAutoImportHintState(
          [void Function(GroupPostsAutoImportHintStateBuilder)? updates]) =>
      (new GroupPostsAutoImportHintStateBuilder()..update(updates))._build();

  _$GroupPostsAutoImportHintState._(
      {required this.loadingStatus, required this.hint})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        loadingStatus, 'GroupPostsAutoImportHintState', 'loadingStatus');
    BuiltValueNullFieldError.checkNotNull(
        hint, 'GroupPostsAutoImportHintState', 'hint');
  }

  @override
  GroupPostsAutoImportHintState rebuild(
          void Function(GroupPostsAutoImportHintStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupPostsAutoImportHintStateBuilder toBuilder() =>
      new GroupPostsAutoImportHintStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupPostsAutoImportHintState &&
        loadingStatus == other.loadingStatus &&
        hint == other.hint;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, loadingStatus.hashCode), hint.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GroupPostsAutoImportHintState')
          ..add('loadingStatus', loadingStatus)
          ..add('hint', hint))
        .toString();
  }
}

class GroupPostsAutoImportHintStateBuilder
    implements
        Builder<GroupPostsAutoImportHintState,
            GroupPostsAutoImportHintStateBuilder> {
  _$GroupPostsAutoImportHintState? _$v;

  LoadingStatus? _loadingStatus;
  LoadingStatus? get loadingStatus => _$this._loadingStatus;
  set loadingStatus(LoadingStatus? loadingStatus) =>
      _$this._loadingStatus = loadingStatus;

  String? _hint;
  String? get hint => _$this._hint;
  set hint(String? hint) => _$this._hint = hint;

  GroupPostsAutoImportHintStateBuilder();

  GroupPostsAutoImportHintStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loadingStatus = $v.loadingStatus;
      _hint = $v.hint;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupPostsAutoImportHintState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GroupPostsAutoImportHintState;
  }

  @override
  void update(void Function(GroupPostsAutoImportHintStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupPostsAutoImportHintState build() => _build();

  _$GroupPostsAutoImportHintState _build() {
    final _$result = _$v ??
        new _$GroupPostsAutoImportHintState._(
            loadingStatus: BuiltValueNullFieldError.checkNotNull(loadingStatus,
                'GroupPostsAutoImportHintState', 'loadingStatus'),
            hint: BuiltValueNullFieldError.checkNotNull(
                hint, 'GroupPostsAutoImportHintState', 'hint'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
