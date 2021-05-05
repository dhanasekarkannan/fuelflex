library req_info;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fuelflex/model/request_info.dart';
import 'package:fuelflex/model/serializers.dart';

part 'req_info.g.dart';

abstract class ReqInfo implements Built<ReqInfo, ReqInfoBuilder> {
  static Serializer<ReqInfo> get serializer => _$reqInfoSerializer;

  ReqInfo._();

  factory ReqInfo([updates(ReqInfoBuilder b)]) = _$ReqInfo;

  @BuiltValueField(wireName: "RequestInfo")
  RequestInfo get requestInfo;

  String toJson() {
    return json.encode(serializers.serializeWith(ReqInfo.serializer, this));
  }

  ReqInfo fromJson(String jsonString) {
    return serializers.deserializeWith(
        ReqInfo.serializer, json.decode(jsonString));
  }
}
