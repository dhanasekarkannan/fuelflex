import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fuelflex/model/serializers.dart';
import 'requestInfo_model.dart';


part 'reqInfo_model.g.dart';
abstract class ReqInfo implements Built<ReqInfo, ReqInfoBuilder>{
  
  static Serializer<ReqInfo> get serializer => _$reqInfoSerializer;

  @BuiltValueField(wireName: "RequestInfo")
  RequestInfo get reqInfo;

  static ReqInfo fromJson(String jsonString) {
    return serializers.deserializeWith(
        ReqInfo.serializer, jsonDecode(jsonString));
  }

  String toJson() {
    return jsonEncode(serializers.serializeWith(ReqInfo.serializer, this));
  }


  ReqInfo._();
  factory ReqInfo([ void Function(ReqInfoBuilder) updates ] ) = _$ReqInfo;
}