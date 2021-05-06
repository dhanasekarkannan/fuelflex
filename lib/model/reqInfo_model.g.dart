// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reqInfo_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReqInfo extends ReqInfo {
  @override
  final String reqInfo;

  factory _$ReqInfo([void Function(ReqInfoBuilder) updates]) =>
      (new ReqInfoBuilder()..update(updates)).build();

  _$ReqInfo._({this.reqInfo}) : super._() {
    BuiltValueNullFieldError.checkNotNull(reqInfo, 'ReqInfo', 'reqInfo');
  }

  @override
  ReqInfo rebuild(void Function(ReqInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReqInfoBuilder toBuilder() => new ReqInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReqInfo && reqInfo == other.reqInfo;
  }

  @override
  int get hashCode {
    return $jf($jc(0, reqInfo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReqInfo')..add('reqInfo', reqInfo))
        .toString();
  }
}

class ReqInfoBuilder implements Builder<ReqInfo, ReqInfoBuilder> {
  _$ReqInfo _$v;

  String _reqInfo;
  String get reqInfo => _$this._reqInfo;
  set reqInfo(String reqInfo) => _$this._reqInfo = reqInfo;

  ReqInfoBuilder();

  ReqInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reqInfo = $v.reqInfo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReqInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReqInfo;
  }

  @override
  void update(void Function(ReqInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReqInfo build() {
    final _$result = _$v ??
        new _$ReqInfo._(
            reqInfo: BuiltValueNullFieldError.checkNotNull(
                reqInfo, 'ReqInfo', 'reqInfo'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
