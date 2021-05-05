// GENERATED CODE - DO NOT MODIFY BY HAND

part of merchant_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MerchantInfo> _$merchantInfoSerializer =
    new _$MerchantInfoSerializer();

class _$MerchantInfoSerializer implements StructuredSerializer<MerchantInfo> {
  @override
  final Iterable<Type> types = const [MerchantInfo, _$MerchantInfo];
  @override
  final String wireName = 'MerchantInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, MerchantInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'inst_id',
      serializers.serialize(object.instId,
          specifiedType: const FullType(String)),
      'merchant_id',
      serializers.serialize(object.merchantId,
          specifiedType: const FullType(String)),
      'merchant_name',
      serializers.serialize(object.merchantName,
          specifiedType: const FullType(String)),
      'merchant_status',
      serializers.serialize(object.merchantStatus,
          specifiedType: const FullType(String)),
      'bin_id',
      serializers.serialize(object.binId,
          specifiedType: const FullType(String)),
      'product_id',
      serializers.serialize(object.productId,
          specifiedType: const FullType(String)),
      'sub_product_id',
      serializers.serialize(object.subProductId,
          specifiedType: const FullType(String)),
      'merchant_type_id',
      serializers.serialize(object.merchantTypeId,
          specifiedType: const FullType(String)),
      'first_name',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'middle_name',
      serializers.serialize(object.middleName,
          specifiedType: const FullType(String)),
      'last_name',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'mobile_num_1',
      serializers.serialize(object.mobileNum1,
          specifiedType: const FullType(String)),
      'mail_id_1',
      serializers.serialize(object.mailId1,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  MerchantInfo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MerchantInfoBuilder();

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
        case 'merchant_name':
          result.merchantName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'merchant_status':
          result.merchantStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bin_id':
          result.binId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'product_id':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sub_product_id':
          result.subProductId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'merchant_type_id':
          result.merchantTypeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'first_name':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'middle_name':
          result.middleName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_name':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mobile_num_1':
          result.mobileNum1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mail_id_1':
          result.mailId1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MerchantInfo extends MerchantInfo {
  @override
  final String instId;
  @override
  final String merchantId;
  @override
  final String merchantName;
  @override
  final String merchantStatus;
  @override
  final String binId;
  @override
  final String productId;
  @override
  final String subProductId;
  @override
  final String merchantTypeId;
  @override
  final String firstName;
  @override
  final String middleName;
  @override
  final String lastName;
  @override
  final String mobileNum1;
  @override
  final String mailId1;

  factory _$MerchantInfo([void Function(MerchantInfoBuilder) updates]) =>
      (new MerchantInfoBuilder()..update(updates)).build();

  _$MerchantInfo._(
      {this.instId,
      this.merchantId,
      this.merchantName,
      this.merchantStatus,
      this.binId,
      this.productId,
      this.subProductId,
      this.merchantTypeId,
      this.firstName,
      this.middleName,
      this.lastName,
      this.mobileNum1,
      this.mailId1})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(instId, 'MerchantInfo', 'instId');
    BuiltValueNullFieldError.checkNotNull(
        merchantId, 'MerchantInfo', 'merchantId');
    BuiltValueNullFieldError.checkNotNull(
        merchantName, 'MerchantInfo', 'merchantName');
    BuiltValueNullFieldError.checkNotNull(
        merchantStatus, 'MerchantInfo', 'merchantStatus');
    BuiltValueNullFieldError.checkNotNull(binId, 'MerchantInfo', 'binId');
    BuiltValueNullFieldError.checkNotNull(
        productId, 'MerchantInfo', 'productId');
    BuiltValueNullFieldError.checkNotNull(
        subProductId, 'MerchantInfo', 'subProductId');
    BuiltValueNullFieldError.checkNotNull(
        merchantTypeId, 'MerchantInfo', 'merchantTypeId');
    BuiltValueNullFieldError.checkNotNull(
        firstName, 'MerchantInfo', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        middleName, 'MerchantInfo', 'middleName');
    BuiltValueNullFieldError.checkNotNull(lastName, 'MerchantInfo', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        mobileNum1, 'MerchantInfo', 'mobileNum1');
    BuiltValueNullFieldError.checkNotNull(mailId1, 'MerchantInfo', 'mailId1');
  }

  @override
  MerchantInfo rebuild(void Function(MerchantInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MerchantInfoBuilder toBuilder() => new MerchantInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MerchantInfo &&
        instId == other.instId &&
        merchantId == other.merchantId &&
        merchantName == other.merchantName &&
        merchantStatus == other.merchantStatus &&
        binId == other.binId &&
        productId == other.productId &&
        subProductId == other.subProductId &&
        merchantTypeId == other.merchantTypeId &&
        firstName == other.firstName &&
        middleName == other.middleName &&
        lastName == other.lastName &&
        mobileNum1 == other.mobileNum1 &&
        mailId1 == other.mailId1;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, instId.hashCode),
                                                    merchantId.hashCode),
                                                merchantName.hashCode),
                                            merchantStatus.hashCode),
                                        binId.hashCode),
                                    productId.hashCode),
                                subProductId.hashCode),
                            merchantTypeId.hashCode),
                        firstName.hashCode),
                    middleName.hashCode),
                lastName.hashCode),
            mobileNum1.hashCode),
        mailId1.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MerchantInfo')
          ..add('instId', instId)
          ..add('merchantId', merchantId)
          ..add('merchantName', merchantName)
          ..add('merchantStatus', merchantStatus)
          ..add('binId', binId)
          ..add('productId', productId)
          ..add('subProductId', subProductId)
          ..add('merchantTypeId', merchantTypeId)
          ..add('firstName', firstName)
          ..add('middleName', middleName)
          ..add('lastName', lastName)
          ..add('mobileNum1', mobileNum1)
          ..add('mailId1', mailId1))
        .toString();
  }
}

class MerchantInfoBuilder
    implements Builder<MerchantInfo, MerchantInfoBuilder> {
  _$MerchantInfo _$v;

  String _instId;
  String get instId => _$this._instId;
  set instId(String instId) => _$this._instId = instId;

  String _merchantId;
  String get merchantId => _$this._merchantId;
  set merchantId(String merchantId) => _$this._merchantId = merchantId;

  String _merchantName;
  String get merchantName => _$this._merchantName;
  set merchantName(String merchantName) => _$this._merchantName = merchantName;

  String _merchantStatus;
  String get merchantStatus => _$this._merchantStatus;
  set merchantStatus(String merchantStatus) =>
      _$this._merchantStatus = merchantStatus;

  String _binId;
  String get binId => _$this._binId;
  set binId(String binId) => _$this._binId = binId;

  String _productId;
  String get productId => _$this._productId;
  set productId(String productId) => _$this._productId = productId;

  String _subProductId;
  String get subProductId => _$this._subProductId;
  set subProductId(String subProductId) => _$this._subProductId = subProductId;

  String _merchantTypeId;
  String get merchantTypeId => _$this._merchantTypeId;
  set merchantTypeId(String merchantTypeId) =>
      _$this._merchantTypeId = merchantTypeId;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _middleName;
  String get middleName => _$this._middleName;
  set middleName(String middleName) => _$this._middleName = middleName;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _mobileNum1;
  String get mobileNum1 => _$this._mobileNum1;
  set mobileNum1(String mobileNum1) => _$this._mobileNum1 = mobileNum1;

  String _mailId1;
  String get mailId1 => _$this._mailId1;
  set mailId1(String mailId1) => _$this._mailId1 = mailId1;

  MerchantInfoBuilder();

  MerchantInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instId = $v.instId;
      _merchantId = $v.merchantId;
      _merchantName = $v.merchantName;
      _merchantStatus = $v.merchantStatus;
      _binId = $v.binId;
      _productId = $v.productId;
      _subProductId = $v.subProductId;
      _merchantTypeId = $v.merchantTypeId;
      _firstName = $v.firstName;
      _middleName = $v.middleName;
      _lastName = $v.lastName;
      _mobileNum1 = $v.mobileNum1;
      _mailId1 = $v.mailId1;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MerchantInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MerchantInfo;
  }

  @override
  void update(void Function(MerchantInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MerchantInfo build() {
    final _$result = _$v ??
        new _$MerchantInfo._(
            instId: BuiltValueNullFieldError.checkNotNull(
                instId, 'MerchantInfo', 'instId'),
            merchantId: BuiltValueNullFieldError.checkNotNull(
                merchantId, 'MerchantInfo', 'merchantId'),
            merchantName: BuiltValueNullFieldError.checkNotNull(
                merchantName, 'MerchantInfo', 'merchantName'),
            merchantStatus: BuiltValueNullFieldError.checkNotNull(
                merchantStatus, 'MerchantInfo', 'merchantStatus'),
            binId: BuiltValueNullFieldError.checkNotNull(
                binId, 'MerchantInfo', 'binId'),
            productId: BuiltValueNullFieldError.checkNotNull(
                productId, 'MerchantInfo', 'productId'),
            subProductId: BuiltValueNullFieldError.checkNotNull(
                subProductId, 'MerchantInfo', 'subProductId'),
            merchantTypeId: BuiltValueNullFieldError.checkNotNull(
                merchantTypeId, 'MerchantInfo', 'merchantTypeId'),
            firstName:
                BuiltValueNullFieldError.checkNotNull(firstName, 'MerchantInfo', 'firstName'),
            middleName: BuiltValueNullFieldError.checkNotNull(middleName, 'MerchantInfo', 'middleName'),
            lastName: BuiltValueNullFieldError.checkNotNull(lastName, 'MerchantInfo', 'lastName'),
            mobileNum1: BuiltValueNullFieldError.checkNotNull(mobileNum1, 'MerchantInfo', 'mobileNum1'),
            mailId1: BuiltValueNullFieldError.checkNotNull(mailId1, 'MerchantInfo', 'mailId1'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
