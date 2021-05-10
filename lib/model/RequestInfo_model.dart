library requestInfo_model;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fuelflex/model/serializers.dart';

part 'requestInfo_model.g.dart';

abstract class RequestInfo implements Built<RequestInfo, RequestInfoBuilder> {
  static Serializer<RequestInfo> get serializer => _$requestInfoSerializer;
  RequestInfo._();

  factory RequestInfo([void Function(RequestInfoBuilder) updates]) =
      _$RequestInfo;

  @BuiltValueField(wireName: "RequestType")
  String get requestType;

  @nullable
  @BuiltValueField(wireName: "TermSerialNum")
  String get termSerialNum;

  @nullable
  String get version;

  static RequestInfo fromJson(String jsonString) {
    return serializers.deserializeWith(
        RequestInfo.serializer, jsonDecode(jsonString));
  }

  String toJson() {
    return jsonEncode(serializers.serializeWith(RequestInfo.serializer, this));
  }
}
