import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fuelflex/model/serializers.dart';

part 'switch_info.g.dart';

abstract class SwitchInfo implements Built<SwitchInfo, SwitchInfoBuilder> {
  SwitchInfo._();

  factory SwitchInfo([updates(SwitchInfoBuilder b)]) = _$SwitchInfo;

  @nullable
  @BuiltValueField(wireName: 'mti')
  String get mti;
  @nullable
  @nullable
  @BuiltValueField(wireName: 'bitmap')
  String get bitmap;
  @nullable
  @BuiltValueField(wireName: 'fld3')
  String get fld3;
  @nullable
  @BuiltValueField(wireName: 'fld11')
  String get fld11;
  @nullable
  @BuiltValueField(wireName: 'fld12')
  String get fld12;
  @nullable
  @BuiltValueField(wireName: 'fld13')
  String get fld13;
  @nullable
  @BuiltValueField(wireName: 'fld24')
  String get fld24;
  @nullable
  @BuiltValueField(wireName: 'fld37')
  String get fld37;
  @nullable
  @BuiltValueField(wireName: 'fld39')
  String get fld39;
  @nullable
  @BuiltValueField(wireName: 'fld41')
  String get fld41;
  @nullable
  @BuiltValueField(wireName: 'fld42')
  String get fld42;
  @nullable
  @BuiltValueField(wireName: 'fld45')
  String get fld45;
  @nullable
  @BuiltValueField(wireName: 'fld58')
  String get fld58;
  @nullable
  @BuiltValueField(wireName: 'fld59')
  String get fld59;
  @nullable
  @BuiltValueField(wireName: 'fld60')
  String get fld60;
  @nullable
  @BuiltValueField(wireName: 'fld61')
  String get fld61;
  @nullable
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
