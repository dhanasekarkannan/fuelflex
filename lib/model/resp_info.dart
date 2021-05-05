library resp_info;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fuelflex/model/serializers.dart';
import 'package:fuelflex/model/switch_info.dart';

part 'resp_info.g.dart';

abstract class RespInfo implements Built<RespInfo, RespInfoBuilder> {
  static Serializer<RespInfo> get serializer => _$respInfoSerializer;
  RespInfo._();

  factory RespInfo([updates(RespInfoBuilder b)]) = _$RespInfo;

  @BuiltValueField(wireName: 'err_code')
  String get errCode;
  @BuiltValueField(wireName: 'err_desc')
  String get errDesc;
  @BuiltValueField(wireName: 'resp_code')
  String get respCode;
  @BuiltValueField(wireName: 'resp_desc')
  String get respDesc;
  @BuiltValueField(wireName: 'switch_info')
  SwitchInfo get switchInfo;
  String toJson() {
    return json.encode(serializers.serializeWith(RespInfo.serializer, this));
  }

  static RespInfo fromJson(String jsonString) {
    return serializers.deserializeWith(
        RespInfo.serializer, json.decode(jsonString));
  }
}
