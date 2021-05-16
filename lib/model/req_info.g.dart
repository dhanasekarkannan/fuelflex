// GENERATED CODE - DO NOT MODIFY BY HAND

part of req_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReqInfo> _$reqInfoSerializer = new _$ReqInfoSerializer();

class _$ReqInfoSerializer implements StructuredSerializer<ReqInfo> {
  @override
  final Iterable<Type> types = const [ReqInfo, _$ReqInfo];
  @override
  final String wireName = 'ReqInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, ReqInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'RequestInfo',
      serializers.serialize(object.requestInfo,
          specifiedType: const FullType(RequestInfo)),
    ];

    return result;
  }

  @override
  ReqInfo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReqInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'RequestInfo':
          result.requestInfo.replace(serializers.deserialize(value,
              specifiedType: const FullType(RequestInfo)) as RequestInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$ReqInfo extends ReqInfo {
  @override
  final RequestInfo requestInfo;

  factory _$ReqInfo([void Function(ReqInfoBuilder) updates]) =>
      (new ReqInfoBuilder()..update(updates)).build();

  _$ReqInfo._({this.requestInfo}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        requestInfo, 'ReqInfo', 'requestInfo');
  }

  @override
  ReqInfo rebuild(void Function(ReqInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReqInfoBuilder toBuilder() => new ReqInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReqInfo && requestInfo == other.requestInfo;
  }

  @override
  int get hashCode {
    return $jf($jc(0, requestInfo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReqInfo')
          ..add('requestInfo', requestInfo))
        .toString();
  }
}

class ReqInfoBuilder implements Builder<ReqInfo, ReqInfoBuilder> {
  _$ReqInfo _$v;

  RequestInfoBuilder _requestInfo;
  RequestInfoBuilder get requestInfo =>
      _$this._requestInfo ??= new RequestInfoBuilder();
  set requestInfo(RequestInfoBuilder requestInfo) =>
      _$this._requestInfo = requestInfo;

  ReqInfoBuilder();

  ReqInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestInfo = $v.requestInfo.toBuilder();
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
    _$ReqInfo _$result;
    try {
      _$result = _$v ?? new _$ReqInfo._(requestInfo: requestInfo.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'requestInfo';
        requestInfo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ReqInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
