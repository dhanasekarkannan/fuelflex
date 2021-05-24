// GENERATED CODE - DO NOT MODIFY BY HAND

part of request_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RequestInfo> _$requestInfoSerializer = new _$RequestInfoSerializer();

class _$RequestInfoSerializer implements StructuredSerializer<RequestInfo> {
  @override
  final Iterable<Type> types = const [RequestInfo, _$RequestInfo];
  @override
  final String wireName = 'RequestInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, RequestInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.requestType;
    if (value != null) {
      result
        ..add('RequestType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.termSerialNum;
    if (value != null) {
      result
        ..add('TermSerialNum')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cardNum;
    if (value != null) {
      result
        ..add('CardNum')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('Amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.stan;
    if (value != null) {
      result
        ..add('Stan')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.localDate;
    if (value != null) {
      result
        ..add('LocalDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.localTime;
    if (value != null) {
      result
        ..add('LocalTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.track2;
    if (value != null) {
      result
        ..add('Track2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.requestNum;
    if (value != null) {
      result
        ..add('RequestNum')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currencyCode;
    if (value != null) {
      result
        ..add('CurrencyCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pinBlock;
    if (value != null) {
      result
        ..add('PINBlock')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.product;
    if (value != null) {
      result
        ..add('Product')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.driverCode;
    if (value != null) {
      result
        ..add('DriverCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.odometer;
    if (value != null) {
      result
        ..add('Odometer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.regNo;
    if (value != null) {
      result
        ..add('RegNo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.productCode;
    if (value != null) {
      result
        ..add('ProductCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optr;
    if (value != null) {
      result
        ..add('Operator')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.operatorType;
    if (value != null) {
      result
        ..add('Operatortype')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.version;
    if (value != null) {
      result
        ..add('version')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RequestInfo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RequestInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'RequestType':
          result.requestType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'TermSerialNum':
          result.termSerialNum = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'CardNum':
          result.cardNum = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Stan':
          result.stan = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'LocalDate':
          result.localDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'LocalTime':
          result.localTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Track2':
          result.track2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'RequestNum':
          result.requestNum = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'CurrencyCode':
          result.currencyCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'PINBlock':
          result.pinBlock = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Product':
          result.product = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'DriverCode':
          result.driverCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Odometer':
          result.odometer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'RegNo':
          result.regNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ProductCode':
          result.productCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Operator':
          result.optr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Operatortype':
          result.operatorType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RequestInfo extends RequestInfo {
  @override
  final String requestType;
  @override
  final String termSerialNum;
  @override
  final String cardNum;
  @override
  final String amount;
  @override
  final String stan;
  @override
  final String localDate;
  @override
  final String localTime;
  @override
  final String track2;
  @override
  final String requestNum;
  @override
  final String currencyCode;
  @override
  final String pinBlock;
  @override
  final String product;
  @override
  final String driverCode;
  @override
  final String odometer;
  @override
  final String regNo;
  @override
  final String productCode;
  @override
  final String optr;
  @override
  final String operatorType;
  @override
  final String version;

  factory _$RequestInfo([void Function(RequestInfoBuilder) updates]) =>
      (new RequestInfoBuilder()..update(updates)).build();

  _$RequestInfo._(
      {this.requestType,
      this.termSerialNum,
      this.cardNum,
      this.amount,
      this.stan,
      this.localDate,
      this.localTime,
      this.track2,
      this.requestNum,
      this.currencyCode,
      this.pinBlock,
      this.product,
      this.driverCode,
      this.odometer,
      this.regNo,
      this.productCode,
      this.optr,
      this.operatorType,
      this.version})
      : super._();

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
        cardNum == other.cardNum &&
        amount == other.amount &&
        stan == other.stan &&
        localDate == other.localDate &&
        localTime == other.localTime &&
        track2 == other.track2 &&
        requestNum == other.requestNum &&
        currencyCode == other.currencyCode &&
        pinBlock == other.pinBlock &&
        product == other.product &&
        driverCode == other.driverCode &&
        odometer == other.odometer &&
        regNo == other.regNo &&
        productCode == other.productCode &&
        optr == other.optr &&
        operatorType == other.operatorType &&
        version == other.version;
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
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                0,
                                                                                requestType
                                                                                    .hashCode),
                                                                            termSerialNum
                                                                                .hashCode),
                                                                        cardNum
                                                                            .hashCode),
                                                                    amount
                                                                        .hashCode),
                                                                stan.hashCode),
                                                            localDate.hashCode),
                                                        localTime.hashCode),
                                                    track2.hashCode),
                                                requestNum.hashCode),
                                            currencyCode.hashCode),
                                        pinBlock.hashCode),
                                    product.hashCode),
                                driverCode.hashCode),
                            odometer.hashCode),
                        regNo.hashCode),
                    productCode.hashCode),
                optr.hashCode),
            operatorType.hashCode),
        version.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RequestInfo')
          ..add('requestType', requestType)
          ..add('termSerialNum', termSerialNum)
          ..add('cardNum', cardNum)
          ..add('amount', amount)
          ..add('stan', stan)
          ..add('localDate', localDate)
          ..add('localTime', localTime)
          ..add('track2', track2)
          ..add('requestNum', requestNum)
          ..add('currencyCode', currencyCode)
          ..add('pinBlock', pinBlock)
          ..add('product', product)
          ..add('driverCode', driverCode)
          ..add('odometer', odometer)
          ..add('regNo', regNo)
          ..add('productCode', productCode)
          ..add('optr', optr)
          ..add('operatorType', operatorType)
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

  String _cardNum;
  String get cardNum => _$this._cardNum;
  set cardNum(String cardNum) => _$this._cardNum = cardNum;

  String _amount;
  String get amount => _$this._amount;
  set amount(String amount) => _$this._amount = amount;

  String _stan;
  String get stan => _$this._stan;
  set stan(String stan) => _$this._stan = stan;

  String _localDate;
  String get localDate => _$this._localDate;
  set localDate(String localDate) => _$this._localDate = localDate;

  String _localTime;
  String get localTime => _$this._localTime;
  set localTime(String localTime) => _$this._localTime = localTime;

  String _track2;
  String get track2 => _$this._track2;
  set track2(String track2) => _$this._track2 = track2;

  String _requestNum;
  String get requestNum => _$this._requestNum;
  set requestNum(String requestNum) => _$this._requestNum = requestNum;

  String _currencyCode;
  String get currencyCode => _$this._currencyCode;
  set currencyCode(String currencyCode) => _$this._currencyCode = currencyCode;

  String _pinBlock;
  String get pinBlock => _$this._pinBlock;
  set pinBlock(String pinBlock) => _$this._pinBlock = pinBlock;

  String _product;
  String get product => _$this._product;
  set product(String product) => _$this._product = product;

  String _driverCode;
  String get driverCode => _$this._driverCode;
  set driverCode(String driverCode) => _$this._driverCode = driverCode;

  String _odometer;
  String get odometer => _$this._odometer;
  set odometer(String odometer) => _$this._odometer = odometer;

  String _regNo;
  String get regNo => _$this._regNo;
  set regNo(String regNo) => _$this._regNo = regNo;

  String _productCode;
  String get productCode => _$this._productCode;
  set productCode(String productCode) => _$this._productCode = productCode;

  String _optr;
  String get optr => _$this._optr;
  set optr(String optr) => _$this._optr = optr;

  String _operatorType;
  String get operatorType => _$this._operatorType;
  set operatorType(String operatorType) => _$this._operatorType = operatorType;

  String _version;
  String get version => _$this._version;
  set version(String version) => _$this._version = version;

  RequestInfoBuilder();

  RequestInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _requestType = $v.requestType;
      _termSerialNum = $v.termSerialNum;
      _cardNum = $v.cardNum;
      _amount = $v.amount;
      _stan = $v.stan;
      _localDate = $v.localDate;
      _localTime = $v.localTime;
      _track2 = $v.track2;
      _requestNum = $v.requestNum;
      _currencyCode = $v.currencyCode;
      _pinBlock = $v.pinBlock;
      _product = $v.product;
      _driverCode = $v.driverCode;
      _odometer = $v.odometer;
      _regNo = $v.regNo;
      _productCode = $v.productCode;
      _optr = $v.optr;
      _operatorType = $v.operatorType;
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
            requestType: requestType,
            termSerialNum: termSerialNum,
            cardNum: cardNum,
            amount: amount,
            stan: stan,
            localDate: localDate,
            localTime: localTime,
            track2: track2,
            requestNum: requestNum,
            currencyCode: currencyCode,
            pinBlock: pinBlock,
            product: product,
            driverCode: driverCode,
            odometer: odometer,
            regNo: regNo,
            productCode: productCode,
            optr: optr,
            operatorType: operatorType,
            version: version);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
