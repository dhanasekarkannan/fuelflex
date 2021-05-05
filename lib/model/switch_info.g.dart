// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'switch_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SwitchInfo> _$switchInfoSerializer = new _$SwitchInfoSerializer();

class _$SwitchInfoSerializer implements StructuredSerializer<SwitchInfo> {
  @override
  final Iterable<Type> types = const [SwitchInfo, _$SwitchInfo];
  @override
  final String wireName = 'SwitchInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, SwitchInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'mti',
      serializers.serialize(object.mti, specifiedType: const FullType(String)),
      'bitmap',
      serializers.serialize(object.bitmap,
          specifiedType: const FullType(String)),
      'fld3',
      serializers.serialize(object.fld3, specifiedType: const FullType(String)),
      'fld11',
      serializers.serialize(object.fld11,
          specifiedType: const FullType(String)),
      'fld12',
      serializers.serialize(object.fld12,
          specifiedType: const FullType(String)),
      'fld13',
      serializers.serialize(object.fld13,
          specifiedType: const FullType(String)),
      'fld24',
      serializers.serialize(object.fld24,
          specifiedType: const FullType(String)),
      'fld37',
      serializers.serialize(object.fld37,
          specifiedType: const FullType(String)),
      'fld39',
      serializers.serialize(object.fld39,
          specifiedType: const FullType(String)),
      'fld41',
      serializers.serialize(object.fld41,
          specifiedType: const FullType(String)),
      'fld42',
      serializers.serialize(object.fld42,
          specifiedType: const FullType(String)),
      'fld45',
      serializers.serialize(object.fld45,
          specifiedType: const FullType(String)),
      'fld58',
      serializers.serialize(object.fld58,
          specifiedType: const FullType(String)),
      'fld59',
      serializers.serialize(object.fld59,
          specifiedType: const FullType(String)),
      'fld60',
      serializers.serialize(object.fld60,
          specifiedType: const FullType(String)),
      'fld61',
      serializers.serialize(object.fld61,
          specifiedType: const FullType(String)),
      'fld70',
      serializers.serialize(object.fld70,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SwitchInfo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SwitchInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'mti':
          result.mti = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bitmap':
          result.bitmap = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fld3':
          result.fld3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fld11':
          result.fld11 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fld12':
          result.fld12 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fld13':
          result.fld13 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fld24':
          result.fld24 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fld37':
          result.fld37 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fld39':
          result.fld39 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fld41':
          result.fld41 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fld42':
          result.fld42 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fld45':
          result.fld45 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fld58':
          result.fld58 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fld59':
          result.fld59 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fld60':
          result.fld60 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fld61':
          result.fld61 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fld70':
          result.fld70 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SwitchInfo extends SwitchInfo {
  @override
  final String mti;
  @override
  final String bitmap;
  @override
  final String fld3;
  @override
  final String fld11;
  @override
  final String fld12;
  @override
  final String fld13;
  @override
  final String fld24;
  @override
  final String fld37;
  @override
  final String fld39;
  @override
  final String fld41;
  @override
  final String fld42;
  @override
  final String fld45;
  @override
  final String fld58;
  @override
  final String fld59;
  @override
  final String fld60;
  @override
  final String fld61;
  @override
  final String fld70;

  factory _$SwitchInfo([void Function(SwitchInfoBuilder) updates]) =>
      (new SwitchInfoBuilder()..update(updates)).build();

  _$SwitchInfo._(
      {this.mti,
      this.bitmap,
      this.fld3,
      this.fld11,
      this.fld12,
      this.fld13,
      this.fld24,
      this.fld37,
      this.fld39,
      this.fld41,
      this.fld42,
      this.fld45,
      this.fld58,
      this.fld59,
      this.fld60,
      this.fld61,
      this.fld70})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(mti, 'SwitchInfo', 'mti');
    BuiltValueNullFieldError.checkNotNull(bitmap, 'SwitchInfo', 'bitmap');
    BuiltValueNullFieldError.checkNotNull(fld3, 'SwitchInfo', 'fld3');
    BuiltValueNullFieldError.checkNotNull(fld11, 'SwitchInfo', 'fld11');
    BuiltValueNullFieldError.checkNotNull(fld12, 'SwitchInfo', 'fld12');
    BuiltValueNullFieldError.checkNotNull(fld13, 'SwitchInfo', 'fld13');
    BuiltValueNullFieldError.checkNotNull(fld24, 'SwitchInfo', 'fld24');
    BuiltValueNullFieldError.checkNotNull(fld37, 'SwitchInfo', 'fld37');
    BuiltValueNullFieldError.checkNotNull(fld39, 'SwitchInfo', 'fld39');
    BuiltValueNullFieldError.checkNotNull(fld41, 'SwitchInfo', 'fld41');
    BuiltValueNullFieldError.checkNotNull(fld42, 'SwitchInfo', 'fld42');
    BuiltValueNullFieldError.checkNotNull(fld45, 'SwitchInfo', 'fld45');
    BuiltValueNullFieldError.checkNotNull(fld58, 'SwitchInfo', 'fld58');
    BuiltValueNullFieldError.checkNotNull(fld59, 'SwitchInfo', 'fld59');
    BuiltValueNullFieldError.checkNotNull(fld60, 'SwitchInfo', 'fld60');
    BuiltValueNullFieldError.checkNotNull(fld61, 'SwitchInfo', 'fld61');
    BuiltValueNullFieldError.checkNotNull(fld70, 'SwitchInfo', 'fld70');
  }

  @override
  SwitchInfo rebuild(void Function(SwitchInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SwitchInfoBuilder toBuilder() => new SwitchInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SwitchInfo &&
        mti == other.mti &&
        bitmap == other.bitmap &&
        fld3 == other.fld3 &&
        fld11 == other.fld11 &&
        fld12 == other.fld12 &&
        fld13 == other.fld13 &&
        fld24 == other.fld24 &&
        fld37 == other.fld37 &&
        fld39 == other.fld39 &&
        fld41 == other.fld41 &&
        fld42 == other.fld42 &&
        fld45 == other.fld45 &&
        fld58 == other.fld58 &&
        fld59 == other.fld59 &&
        fld60 == other.fld60 &&
        fld61 == other.fld61 &&
        fld70 == other.fld70;
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
                                                                        0,
                                                                        mti
                                                                            .hashCode),
                                                                    bitmap
                                                                        .hashCode),
                                                                fld3.hashCode),
                                                            fld11.hashCode),
                                                        fld12.hashCode),
                                                    fld13.hashCode),
                                                fld24.hashCode),
                                            fld37.hashCode),
                                        fld39.hashCode),
                                    fld41.hashCode),
                                fld42.hashCode),
                            fld45.hashCode),
                        fld58.hashCode),
                    fld59.hashCode),
                fld60.hashCode),
            fld61.hashCode),
        fld70.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SwitchInfo')
          ..add('mti', mti)
          ..add('bitmap', bitmap)
          ..add('fld3', fld3)
          ..add('fld11', fld11)
          ..add('fld12', fld12)
          ..add('fld13', fld13)
          ..add('fld24', fld24)
          ..add('fld37', fld37)
          ..add('fld39', fld39)
          ..add('fld41', fld41)
          ..add('fld42', fld42)
          ..add('fld45', fld45)
          ..add('fld58', fld58)
          ..add('fld59', fld59)
          ..add('fld60', fld60)
          ..add('fld61', fld61)
          ..add('fld70', fld70))
        .toString();
  }
}

class SwitchInfoBuilder implements Builder<SwitchInfo, SwitchInfoBuilder> {
  _$SwitchInfo _$v;

  String _mti;
  String get mti => _$this._mti;
  set mti(String mti) => _$this._mti = mti;

  String _bitmap;
  String get bitmap => _$this._bitmap;
  set bitmap(String bitmap) => _$this._bitmap = bitmap;

  String _fld3;
  String get fld3 => _$this._fld3;
  set fld3(String fld3) => _$this._fld3 = fld3;

  String _fld11;
  String get fld11 => _$this._fld11;
  set fld11(String fld11) => _$this._fld11 = fld11;

  String _fld12;
  String get fld12 => _$this._fld12;
  set fld12(String fld12) => _$this._fld12 = fld12;

  String _fld13;
  String get fld13 => _$this._fld13;
  set fld13(String fld13) => _$this._fld13 = fld13;

  String _fld24;
  String get fld24 => _$this._fld24;
  set fld24(String fld24) => _$this._fld24 = fld24;

  String _fld37;
  String get fld37 => _$this._fld37;
  set fld37(String fld37) => _$this._fld37 = fld37;

  String _fld39;
  String get fld39 => _$this._fld39;
  set fld39(String fld39) => _$this._fld39 = fld39;

  String _fld41;
  String get fld41 => _$this._fld41;
  set fld41(String fld41) => _$this._fld41 = fld41;

  String _fld42;
  String get fld42 => _$this._fld42;
  set fld42(String fld42) => _$this._fld42 = fld42;

  String _fld45;
  String get fld45 => _$this._fld45;
  set fld45(String fld45) => _$this._fld45 = fld45;

  String _fld58;
  String get fld58 => _$this._fld58;
  set fld58(String fld58) => _$this._fld58 = fld58;

  String _fld59;
  String get fld59 => _$this._fld59;
  set fld59(String fld59) => _$this._fld59 = fld59;

  String _fld60;
  String get fld60 => _$this._fld60;
  set fld60(String fld60) => _$this._fld60 = fld60;

  String _fld61;
  String get fld61 => _$this._fld61;
  set fld61(String fld61) => _$this._fld61 = fld61;

  String _fld70;
  String get fld70 => _$this._fld70;
  set fld70(String fld70) => _$this._fld70 = fld70;

  SwitchInfoBuilder();

  SwitchInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mti = $v.mti;
      _bitmap = $v.bitmap;
      _fld3 = $v.fld3;
      _fld11 = $v.fld11;
      _fld12 = $v.fld12;
      _fld13 = $v.fld13;
      _fld24 = $v.fld24;
      _fld37 = $v.fld37;
      _fld39 = $v.fld39;
      _fld41 = $v.fld41;
      _fld42 = $v.fld42;
      _fld45 = $v.fld45;
      _fld58 = $v.fld58;
      _fld59 = $v.fld59;
      _fld60 = $v.fld60;
      _fld61 = $v.fld61;
      _fld70 = $v.fld70;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SwitchInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SwitchInfo;
  }

  @override
  void update(void Function(SwitchInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SwitchInfo build() {
    final _$result = _$v ??
        new _$SwitchInfo._(
            mti:
                BuiltValueNullFieldError.checkNotNull(mti, 'SwitchInfo', 'mti'),
            bitmap: BuiltValueNullFieldError.checkNotNull(
                bitmap, 'SwitchInfo', 'bitmap'),
            fld3: BuiltValueNullFieldError.checkNotNull(
                fld3, 'SwitchInfo', 'fld3'),
            fld11: BuiltValueNullFieldError.checkNotNull(
                fld11, 'SwitchInfo', 'fld11'),
            fld12: BuiltValueNullFieldError.checkNotNull(
                fld12, 'SwitchInfo', 'fld12'),
            fld13: BuiltValueNullFieldError.checkNotNull(
                fld13, 'SwitchInfo', 'fld13'),
            fld24: BuiltValueNullFieldError.checkNotNull(
                fld24, 'SwitchInfo', 'fld24'),
            fld37: BuiltValueNullFieldError.checkNotNull(
                fld37, 'SwitchInfo', 'fld37'),
            fld39: BuiltValueNullFieldError.checkNotNull(
                fld39, 'SwitchInfo', 'fld39'),
            fld41: BuiltValueNullFieldError.checkNotNull(
                fld41, 'SwitchInfo', 'fld41'),
            fld42: BuiltValueNullFieldError.checkNotNull(
                fld42, 'SwitchInfo', 'fld42'),
            fld45: BuiltValueNullFieldError.checkNotNull(
                fld45, 'SwitchInfo', 'fld45'),
            fld58: BuiltValueNullFieldError.checkNotNull(
                fld58, 'SwitchInfo', 'fld58'),
            fld59: BuiltValueNullFieldError.checkNotNull(
                fld59, 'SwitchInfo', 'fld59'),
            fld60: BuiltValueNullFieldError.checkNotNull(
                fld60, 'SwitchInfo', 'fld60'),
            fld61: BuiltValueNullFieldError.checkNotNull(
                fld61, 'SwitchInfo', 'fld61'),
            fld70:
                BuiltValueNullFieldError.checkNotNull(fld70, 'SwitchInfo', 'fld70'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
