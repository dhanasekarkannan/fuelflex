import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fuelflex/model/serializers.dart';

part 'switch_info.g.dart';

abstract class SwitchInfo implements Built<SwitchInfo, SwitchInfoBuilder> {
  SwitchInfo._();

  factory SwitchInfo([updates(SwitchInfoBuilder b)]) = _$SwitchInfo;

  @BuiltValueField(wireName: 'mti')
  String get mti;
  @BuiltValueField(wireName: 'bitmap')
  String get bitmap;
  @BuiltValueField(wireName: 'fld3')
  String get fld3;
  @BuiltValueField(wireName: 'fld11')
  String get fld11;
  @BuiltValueField(wireName: 'fld12')
  String get fld12;
  @BuiltValueField(wireName: 'fld13')
  String get fld13;
  @BuiltValueField(wireName: 'fld24')
  String get fld24;
  @BuiltValueField(wireName: 'fld37')
  String get fld37;
  @BuiltValueField(wireName: 'fld39')
  String get fld39;
  @BuiltValueField(wireName: 'fld41')
  String get fld41;
  @BuiltValueField(wireName: 'fld42')
  String get fld42;
  @BuiltValueField(wireName: 'fld45')
  String get fld45;
  @BuiltValueField(wireName: 'fld58')
  String get fld58;
  @BuiltValueField(wireName: 'fld59')
  String get fld59;
  @BuiltValueField(wireName: 'fld60')
  String get fld60;
  @BuiltValueField(wireName: 'fld61')
  String get fld61;
  @BuiltValueField(wireName: 'fld70')
  String get fld70;
  String toJson() {
    return json.encode(serializers.serializeWith(SwitchInfo.serializer, this));
  }

  static SwitchInfo fromJson(String jsonString) {
    return serializers.deserializeWith(
        SwitchInfo.serializer, json.decode(jsonString));
  }

  static Serializer<SwitchInfo> get serializer => _$switchInfoSerializer;
}