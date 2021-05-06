// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requestInfo_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RequestInfo extends RequestInfo {
  @override
  final String requestType;
  @override
  final String termSerialNum;
  @override
  final String version;

  factory _$RequestInfo([void Function(RequestInfoBuilder) updates]) =>
      (new RequestInfoBuilder()..update(updates)).build();

  _$RequestInfo._({this.requestType, this.termSerialNum, this.version})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        requestType, 'RequestInfo', 'requestType');
  }

  @override
  RequestInfo rebuild(void Function(RequestInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestInfoBuilder toBuilder() => new RequestInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestInfo &&
        requestType == other.requestType &&
        termSerialNum == other.termSerialNum &&
        version == other.version;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, requestType.hashCode), termSerialNum.hashCode),
        version.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RequestInfo')
          ..add('requestType', requestType)
          ..add('termSerialNum', termSerialNum)
          ..add('version', version))
        .toString();
  }
}

class RequestInfoBuilder implements Builder<RequestInfo, RequestInfoBuilder> {
  _$RequestInfo _$v;

  String _requestType;
  String get requestType => _$this._requestType;
  set requestType(String requestType) => _$this._requestType = requestType;

  String _termSerialNum;
  String get termSerialNum => _$this._termSerialNum;
  set termSerialNum(String termSerialNum) =>
      _$this._termSerialNum = termSerialNum;

  String _version;
  String get version => _$this._version;
  set version(String version) => _$this._version = version;

  RequestInfoBuilder();

  RequestInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestType = $v.requestType;
      _termSerialNum = $v.termSerialNum;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestInfo;
  }

  @override
  void update(void Function(RequestInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RequestInfo build() {
    final _$result = _$v ??
        new _$RequestInfo._(
            requestType: BuiltValueNullFieldError.checkNotNull(
                requestType, 'RequestInfo', 'requestType'),
            termSerialNum: termSerialNum,
            version: version);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
