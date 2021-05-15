// GENERATED CODE - DO NOT MODIFY BY HAND

part of terminal_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TerminalInfo> _$terminalInfoSerializer =
    new _$TerminalInfoSerializer();

class _$TerminalInfoSerializer implements StructuredSerializer<TerminalInfo> {
  @override
  final Iterable<Type> types = const [TerminalInfo, _$TerminalInfo];
  @override
  final String wireName = 'TerminalInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, TerminalInfo object,
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
      'term_id',
      serializers.serialize(object.termId,
          specifiedType: const FullType(String)),
      'terminal_status',
      serializers.serialize(object.terminalStatus,
          specifiedType: const FullType(String)),
      'terminal_name',
      serializers.serialize(object.terminalName,
          specifiedType: const FullType(String)),
      'machine_id',
      serializers.serialize(object.machineId,
          specifiedType: const FullType(String)),
      'term_loc',
      serializers.serialize(object.termLoc,
          specifiedType: const FullType(String)),
      'mcc',
      serializers.serialize(object.mcc, specifiedType: const FullType(String)),
      'country_code',
      serializers.serialize(object.countryCode,
          specifiedType: const FullType(String)),
      'curr_code',
      serializers.serialize(object.currCode,
          specifiedType: const FullType(String)),
      'tmk',
      serializers.serialize(object.tmk, specifiedType: const FullType(String)),
      'tpk',
      serializers.serialize(object.tpk, specifiedType: const FullType(String)),
      'batch_id',
      serializers.serialize(object.batchId,
          specifiedType: const FullType(String)),
      'route_id',
      serializers.serialize(object.routeId,
          specifiedType: const FullType(String)),
      'echo_interval',
      serializers.serialize(object.echoInterval,
          specifiedType: const FullType(int)),
    ];
    Object value;
    value = object.terminalTypeId;
    if (value != null) {
      result
        ..add('terminal_type_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mack;
    if (value != null) {
      result
        ..add('mack')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TerminalInfo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TerminalInfoBuilder();

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
        case 'term_id':
          result.termId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'terminal_status':
          result.terminalStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'terminal_type_id':
          result.terminalTypeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'terminal_name':
          result.terminalName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'machine_id':
          result.machineId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'term_loc':
          result.termLoc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mcc':
          result.mcc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country_code':
          result.countryCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'curr_code':
          result.currCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tmk':
          result.tmk = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tpk':
          result.tpk = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mack':
          result.mack = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'batch_id':
          result.batchId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'route_id':
          result.routeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'echo_interval':
          result.echoInterval = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$TerminalInfo extends TerminalInfo {
  @override
  final String instId;
  @override
  final String merchantId;
  @override
  final String storeId;
  @override
  final String termId;
  @override
  final String terminalStatus;
  @override
  final String terminalTypeId;
  @override
  final String terminalName;
  @override
  final String machineId;
  @override
  final String termLoc;
  @override
  final String mcc;
  @override
  final String countryCode;
  @override
  final String currCode;
  @override
  final String tmk;
  @override
  final String tpk;
  @override
  final String mack;
  @override
  final String batchId;
  @override
  final String routeId;
  @override
  final int echoInterval;

  factory _$TerminalInfo([void Function(TerminalInfoBuilder) updates]) =>
      (new TerminalInfoBuilder()..update(updates)).build();

  _$TerminalInfo._(
      {this.instId,
      this.merchantId,
      this.storeId,
      this.termId,
      this.terminalStatus,
      this.terminalTypeId,
      this.terminalName,
      this.machineId,
      this.termLoc,
      this.mcc,
      this.countryCode,
      this.currCode,
      this.tmk,
      this.tpk,
      this.mack,
      this.batchId,
      this.routeId,
      this.echoInterval})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(instId, 'TerminalInfo', 'instId');
    BuiltValueNullFieldError.checkNotNull(
        merchantId, 'TerminalInfo', 'merchantId');
    BuiltValueNullFieldError.checkNotNull(storeId, 'TerminalInfo', 'storeId');
    BuiltValueNullFieldError.checkNotNull(termId, 'TerminalInfo', 'termId');
    BuiltValueNullFieldError.checkNotNull(
        terminalStatus, 'TerminalInfo', 'terminalStatus');
    BuiltValueNullFieldError.checkNotNull(
        terminalName, 'TerminalInfo', 'terminalName');
    BuiltValueNullFieldError.checkNotNull(
        machineId, 'TerminalInfo', 'machineId');
    BuiltValueNullFieldError.checkNotNull(termLoc, 'TerminalInfo', 'termLoc');
    BuiltValueNullFieldError.checkNotNull(mcc, 'TerminalInfo', 'mcc');
    BuiltValueNullFieldError.checkNotNull(
        countryCode, 'TerminalInfo', 'countryCode');
    BuiltValueNullFieldError.checkNotNull(currCode, 'TerminalInfo', 'currCode');
    BuiltValueNullFieldError.checkNotNull(tmk, 'TerminalInfo', 'tmk');
    BuiltValueNullFieldError.checkNotNull(tpk, 'TerminalInfo', 'tpk');
    BuiltValueNullFieldError.checkNotNull(batchId, 'TerminalInfo', 'batchId');
    BuiltValueNullFieldError.checkNotNull(routeId, 'TerminalInfo', 'routeId');
    BuiltValueNullFieldError.checkNotNull(
        echoInterval, 'TerminalInfo', 'echoInterval');
  }

  @override
  TerminalInfo rebuild(void Function(TerminalInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TerminalInfoBuilder toBuilder() => new TerminalInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TerminalInfo &&
        instId == other.instId &&
        merchantId == other.merchantId &&
        storeId == other.storeId &&
        termId == other.termId &&
        terminalStatus == other.terminalStatus &&
        terminalTypeId == other.terminalTypeId &&
        terminalName == other.terminalName &&
        machineId == other.machineId &&
        termLoc == other.termLoc &&
        mcc == other.mcc &&
        countryCode == other.countryCode &&
        currCode == other.currCode &&
        tmk == other.tmk &&
        tpk == other.tpk &&
        mack == other.mack &&
        batchId == other.batchId &&
        routeId == other.routeId &&
        echoInterval == other.echoInterval;
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
                                                                            0,
                                                                            instId
                                                                                .hashCode),
                                                                        merchantId
                                                                            .hashCode),
                                                                    storeId
                                                                        .hashCode),
                                                                termId
                                                                    .hashCode),
                                                            terminalStatus
                                                                .hashCode),
                                                        terminalTypeId
                                                            .hashCode),
                                                    terminalName.hashCode),
                                                machineId.hashCode),
                                            termLoc.hashCode),
                                        mcc.hashCode),
                                    countryCode.hashCode),
                                currCode.hashCode),
                            tmk.hashCode),
                        tpk.hashCode),
                    mack.hashCode),
                batchId.hashCode),
            routeId.hashCode),
        echoInterval.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TerminalInfo')
          ..add('instId', instId)
          ..add('merchantId', merchantId)
          ..add('storeId', storeId)
          ..add('termId', termId)
          ..add('terminalStatus', terminalStatus)
          ..add('terminalTypeId', terminalTypeId)
          ..add('terminalName', terminalName)
          ..add('machineId', machineId)
          ..add('termLoc', termLoc)
          ..add('mcc', mcc)
          ..add('countryCode', countryCode)
          ..add('currCode', currCode)
          ..add('tmk', tmk)
          ..add('tpk', tpk)
          ..add('mack', mack)
          ..add('batchId', batchId)
          ..add('routeId', routeId)
          ..add('echoInterval', echoInterval))
        .toString();
  }
}

class TerminalInfoBuilder
    implements Builder<TerminalInfo, TerminalInfoBuilder> {
  _$TerminalInfo _$v;

  String _instId;
  String get instId => _$this._instId;
  set instId(String instId) => _$this._instId = instId;

  String _merchantId;
  String get merchantId => _$this._merchantId;
  set merchantId(String merchantId) => _$this._merchantId = merchantId;

  String _storeId;
  String get storeId => _$this._storeId;
  set storeId(String storeId) => _$this._storeId = storeId;

  String _termId;
  String get termId => _$this._termId;
  set termId(String termId) => _$this._termId = termId;

  String _terminalStatus;
  String get terminalStatus => _$this._terminalStatus;
  set terminalStatus(String terminalStatus) =>
      _$this._terminalStatus = terminalStatus;

  String _terminalTypeId;
  String get terminalTypeId => _$this._terminalTypeId;
  set terminalTypeId(String terminalTypeId) =>
      _$this._terminalTypeId = terminalTypeId;

  String _terminalName;
  String get terminalName => _$this._terminalName;
  set terminalName(String terminalName) => _$this._terminalName = terminalName;

  String _machineId;
  String get machineId => _$this._machineId;
  set machineId(String machineId) => _$this._machineId = machineId;

  String _termLoc;
  String get termLoc => _$this._termLoc;
  set termLoc(String termLoc) => _$this._termLoc = termLoc;

  String _mcc;
  String get mcc => _$this._mcc;
  set mcc(String mcc) => _$this._mcc = mcc;

  String _countryCode;
  String get countryCode => _$this._countryCode;
  set countryCode(String countryCode) => _$this._countryCode = countryCode;

  String _currCode;
  String get currCode => _$this._currCode;
  set currCode(String currCode) => _$this._currCode = currCode;

  String _tmk;
  String get tmk => _$this._tmk;
  set tmk(String tmk) => _$this._tmk = tmk;

  String _tpk;
  String get tpk => _$this._tpk;
  set tpk(String tpk) => _$this._tpk = tpk;

  String _mack;
  String get mack => _$this._mack;
  set mack(String mack) => _$this._mack = mack;

  String _batchId;
  String get batchId => _$this._batchId;
  set batchId(String batchId) => _$this._batchId = batchId;

  String _routeId;
  String get routeId => _$this._routeId;
  set routeId(String routeId) => _$this._routeId = routeId;

  int _echoInterval;
  int get echoInterval => _$this._echoInterval;
  set echoInterval(int echoInterval) => _$this._echoInterval = echoInterval;

  TerminalInfoBuilder();

  TerminalInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instId = $v.instId;
      _merchantId = $v.merchantId;
      _storeId = $v.storeId;
      _termId = $v.termId;
      _terminalStatus = $v.terminalStatus;
      _terminalTypeId = $v.terminalTypeId;
      _terminalName = $v.terminalName;
      _machineId = $v.machineId;
      _termLoc = $v.termLoc;
      _mcc = $v.mcc;
      _countryCode = $v.countryCode;
      _currCode = $v.currCode;
      _tmk = $v.tmk;
      _tpk = $v.tpk;
      _mack = $v.mack;
      _batchId = $v.batchId;
      _routeId = $v.routeId;
      _echoInterval = $v.echoInterval;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TerminalInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TerminalInfo;
  }

  @override
  void update(void Function(TerminalInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TerminalInfo build() {
    final _$result = _$v ??
        new _$TerminalInfo._(
            instId: BuiltValueNullFieldError.checkNotNull(
                instId, 'TerminalInfo', 'instId'),
            merchantId: BuiltValueNullFieldError.checkNotNull(
                merchantId, 'TerminalInfo', 'merchantId'),
            storeId: BuiltValueNullFieldError.checkNotNull(
                storeId, 'TerminalInfo', 'storeId'),
            termId: BuiltValueNullFieldError.checkNotNull(
                termId, 'TerminalInfo', 'termId'),
            terminalStatus: BuiltValueNullFieldError.checkNotNull(
                terminalStatus, 'TerminalInfo', 'terminalStatus'),
            terminalTypeId: terminalTypeId,
            terminalName: BuiltValueNullFieldError.checkNotNull(
                terminalName, 'TerminalInfo', 'terminalName'),
            machineId: BuiltValueNullFieldError.checkNotNull(
                machineId, 'TerminalInfo', 'machineId'),
            termLoc: BuiltValueNullFieldError.checkNotNull(
                termLoc, 'TerminalInfo', 'termLoc'),
            mcc: BuiltValueNullFieldError.checkNotNull(
                mcc, 'TerminalInfo', 'mcc'),
            countryCode: BuiltValueNullFieldError.checkNotNull(countryCode, 'TerminalInfo', 'countryCode'),
            currCode: BuiltValueNullFieldError.checkNotNull(currCode, 'TerminalInfo', 'currCode'),
            tmk: BuiltValueNullFieldError.checkNotNull(tmk, 'TerminalInfo', 'tmk'),
            tpk: BuiltValueNullFieldError.checkNotNull(tpk, 'TerminalInfo', 'tpk'),
            mack: mack,
            batchId: BuiltValueNullFieldError.checkNotNull(batchId, 'TerminalInfo', 'batchId'),
            routeId: BuiltValueNullFieldError.checkNotNull(routeId, 'TerminalInfo', 'routeId'),
            echoInterval: BuiltValueNullFieldError.checkNotNull(echoInterval, 'TerminalInfo', 'echoInterval'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
