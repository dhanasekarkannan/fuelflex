// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reqInfo_model.dart';

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
      serializers.serialize(object.reqInfo,
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
          result.reqInfo.replace(serializers.deserialize(value,
              specifiedType: const FullType(RequestInfo)) as RequestInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$ReqInfo extends ReqInfo {
  @override
  final RequestInfo reqInfo;

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

  RequestInfoBuilder _reqInfo;
  RequestInfoBuilder get reqInfo =>
      _$this._reqInfo ??= new RequestInfoBuilder();
  set reqInfo(RequestInfoBuilder reqInfo) => _$this._reqInfo = reqInfo;

  ReqInfoBuilder();

  ReqInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reqInfo = $v.reqInfo.toBuilder();
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
      _$result = _$v ?? new _$ReqInfo._(reqInfo: reqInfo.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'reqInfo';
        reqInfo.build();
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
