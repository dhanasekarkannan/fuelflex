// GENERATED CODE - DO NOT MODIFY BY HAND

part of store_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StoreInfo> _$storeInfoSerializer = new _$StoreInfoSerializer();

class _$StoreInfoSerializer implements StructuredSerializer<StoreInfo> {
  @override
  final Iterable<Type> types = const [StoreInfo, _$StoreInfo];
  @override
  final String wireName = 'StoreInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, StoreInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'inst_id',
      serializers.serialize(object.instId,
          specifiedType: const FullType(String)),
      'merchant_id',
      serializers.serialize(object.merchantId,
          specifiedType: const FullType(String)),
      'store_id',
      serializers.serialize(object.storeId,
          specifiedType: const FullType(String)),
      'store_status',
      serializers.serialize(object.storeStatus,
          specifiedType: const FullType(String)),
      'store_name',
      serializers.serialize(object.storeName,
          specifiedType: const FullType(String)),
      'store_location',
      serializers.serialize(object.storeLocation,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  StoreInfo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StoreInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'inst_id':
          result.instId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'merchant_id':
          result.merchantId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'store_id':
          result.storeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'store_status':
          result.storeStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'store_name':
          result.storeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'store_location':
          result.storeLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$StoreInfo extends StoreInfo {
  @override
  final String instId;
  @override
  final String merchantId;
  @override
  final String storeId;
  @override
  final String storeStatus;
  @override
  final String storeName;
  @override
  final String storeLocation;

  factory _$StoreInfo([void Function(StoreInfoBuilder) updates]) =>
      (new StoreInfoBuilder()..update(updates)).build();

  _$StoreInfo._(
      {this.instId,
      this.merchantId,
      this.storeId,
      this.storeStatus,
      this.storeName,
      this.storeLocation})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(instId, 'StoreInfo', 'instId');
    BuiltValueNullFieldError.checkNotNull(
        merchantId, 'StoreInfo', 'merchantId');
    BuiltValueNullFieldError.checkNotNull(storeId, 'StoreInfo', 'storeId');
    BuiltValueNullFieldError.checkNotNull(
        storeStatus, 'StoreInfo', 'storeStatus');
    BuiltValueNullFieldError.checkNotNull(storeName, 'StoreInfo', 'storeName');
    BuiltValueNullFieldError.checkNotNull(
        storeLocation, 'StoreInfo', 'storeLocation');
  }

  @override
  StoreInfo rebuild(void Function(StoreInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoreInfoBuilder toBuilder() => new StoreInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoreInfo &&
        instId == other.instId &&
        merchantId == other.merchantId &&
        storeId == other.storeId &&
        storeStatus == other.storeStatus &&
        storeName == other.storeName &&
        storeLocation == other.storeLocation;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, instId.hashCode), merchantId.hashCode),
                    storeId.hashCode),
                storeStatus.hashCode),
            storeName.hashCode),
        storeLocation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StoreInfo')
          ..add('instId', instId)
          ..add('merchantId', merchantId)
          ..add('storeId', storeId)
          ..add('storeStatus', storeStatus)
          ..add('storeName', storeName)
          ..add('storeLocation', storeLocation))
        .toString();
  }
}

class StoreInfoBuilder implements Builder<StoreInfo, StoreInfoBuilder> {
  _$StoreInfo _$v;

  String _instId;
  String get instId => _$this._instId;
  set instId(String instId) => _$this._instId = instId;

  String _merchantId;
  String get merchantId => _$this._merchantId;
  set merchantId(String merchantId) => _$this._merchantId = merchantId;

  String _storeId;
  String get storeId => _$this._storeId;
  set storeId(String storeId) => _$this._storeId = storeId;

  String _storeStatus;
  String get storeStatus => _$this._storeStatus;
  set storeStatus(String storeStatus) => _$this._storeStatus = storeStatus;

  String _storeName;
  String get storeName => _$this._storeName;
  set storeName(String storeName) => _$this._storeName = storeName;

  String _storeLocation;
  String get storeLocation => _$this._storeLocation;
  set storeLocation(String storeLocation) =>
      _$this._storeLocation = storeLocation;

  StoreInfoBuilder();

  StoreInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instId = $v.instId;
      _merchantId = $v.merchantId;
      _storeId = $v.storeId;
      _storeStatus = $v.storeStatus;
      _storeName = $v.storeName;
      _storeLocation = $v.storeLocation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StoreInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StoreInfo;
  }

  @override
  void update(void Function(StoreInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StoreInfo build() {
    final _$result = _$v ??
        new _$StoreInfo._(
            instId: BuiltValueNullFieldError.checkNotNull(
                instId, 'StoreInfo', 'instId'),
            merchantId: BuiltValueNullFieldError.checkNotNull(
                merchantId, 'StoreInfo', 'merchantId'),
            storeId: BuiltValueNullFieldError.checkNotNull(
                storeId, 'StoreInfo', 'storeId'),
            storeStatus: BuiltValueNullFieldError.checkNotNull(
                storeStatus, 'StoreInfo', 'storeStatus'),
            storeName: BuiltValueNullFieldError.checkNotNull(
                storeName, 'StoreInfo', 'storeName'),
            storeLocation: BuiltValueNullFieldError.checkNotNull(
                storeLocation, 'StoreInfo', 'storeLocation'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
