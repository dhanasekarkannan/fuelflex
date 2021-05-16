// GENERATED CODE - DO NOT MODIFY BY HAND

part of resp_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RespInfo> _$respInfoSerializer = new _$RespInfoSerializer();

class _$RespInfoSerializer implements StructuredSerializer<RespInfo> {
  @override
  final Iterable<Type> types = const [RespInfo, _$RespInfo];
  @override
  final String wireName = 'RespInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, RespInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'err_code',
      serializers.serialize(object.errCode,
          specifiedType: const FullType(String)),
      'err_desc',
      serializers.serialize(object.errDesc,
          specifiedType: const FullType(String)),
      'resp_code',
      serializers.serialize(object.respCode,
          specifiedType: const FullType(String)),
      'resp_desc',
      serializers.serialize(object.respDesc,
          specifiedType: const FullType(String)),
      'switch_info',
      serializers.serialize(object.switchInfo,
          specifiedType: const FullType(SwitchInfo)),
    ];

    return result;
  }

  @override
  RespInfo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RespInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'err_code':
          result.errCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'err_desc':
          result.errDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'resp_code':
          result.respCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'resp_desc':
          result.respDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'switch_info':
          result.switchInfo.replace(serializers.deserialize(value,
              specifiedType: const FullType(SwitchInfo)) as SwitchInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$RespInfo extends RespInfo {
  @override
  final String errCode;
  @override
  final String errDesc;
  @override
  final String respCode;
  @override
  final String respDesc;
  @override
  final SwitchInfo switchInfo;

  factory _$RespInfo([void Function(RespInfoBuilder) updates]) =>
      (new RespInfoBuilder()..update(updates)).build();

  _$RespInfo._(
      {this.errCode,
      this.errDesc,
      this.respCode,
      this.respDesc,
      this.switchInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(errCode, 'RespInfo', 'errCode');
    BuiltValueNullFieldError.checkNotNull(errDesc, 'RespInfo', 'errDesc');
    BuiltValueNullFieldError.checkNotNull(respCode, 'RespInfo', 'respCode');
    BuiltValueNullFieldError.checkNotNull(respDesc, 'RespInfo', 'respDesc');
    BuiltValueNullFieldError.checkNotNull(switchInfo, 'RespInfo', 'switchInfo');
  }

  @override
  RespInfo rebuild(void Function(RespInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RespInfoBuilder toBuilder() => new RespInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RespInfo &&
        errCode == other.errCode &&
        errDesc == other.errDesc &&
        respCode == other.respCode &&
        respDesc == other.respDesc &&
        switchInfo == other.switchInfo;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, errCode.hashCode), errDesc.hashCode),
                respCode.hashCode),
            respDesc.hashCode),
        switchInfo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RespInfo')
          ..add('errCode', errCode)
          ..add('errDesc', errDesc)
          ..add('respCode', respCode)
          ..add('respDesc', respDesc)
          ..add('switchInfo', switchInfo))
        .toString();
  }
}

class RespInfoBuilder implements Builder<RespInfo, RespInfoBuilder> {
  _$RespInfo _$v;

  String _errCode;
  String get errCode => _$this._errCode;
  set errCode(String errCode) => _$this._errCode = errCode;

  String _errDesc;
  String get errDesc => _$this._errDesc;
  set errDesc(String errDesc) => _$this._errDesc = errDesc;

  String _respCode;
  String get respCode => _$this._respCode;
  set respCode(String respCode) => _$this._respCode = respCode;

  String _respDesc;
  String get respDesc => _$this._respDesc;
  set respDesc(String respDesc) => _$this._respDesc = respDesc;

  SwitchInfoBuilder _switchInfo;
  SwitchInfoBuilder get switchInfo =>
      _$this._switchInfo ??= new SwitchInfoBuilder();
  set switchInfo(SwitchInfoBuilder switchInfo) =>
      _$this._switchInfo = switchInfo;

  RespInfoBuilder();

  RespInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errCode = $v.errCode;
      _errDesc = $v.errDesc;
      _respCode = $v.respCode;
      _respDesc = $v.respDesc;
      _switchInfo = $v.switchInfo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RespInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RespInfo;
  }

  @override
  void update(void Function(RespInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RespInfo build() {
    _$RespInfo _$result;
    try {
      _$result = _$v ??
          new _$RespInfo._(
              errCode: BuiltValueNullFieldError.checkNotNull(
                  errCode, 'RespInfo', 'errCode'),
              errDesc: BuiltValueNullFieldError.checkNotNull(
                  errDesc, 'RespInfo', 'errDesc'),
              respCode: BuiltValueNullFieldError.checkNotNull(
                  respCode, 'RespInfo', 'respCode'),
              respDesc: BuiltValueNullFieldError.checkNotNull(
                  respDesc, 'RespInfo', 'respDesc'),
              switchInfo: switchInfo.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'switchInfo';
        switchInfo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RespInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
