library request_info;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fuelflex/model/serializers.dart';

part 'request_info.g.dart';

abstract class RequestInfo implements Built<RequestInfo, RequestInfoBuilder> {
  RequestInfo._();
  static Serializer<RequestInfo> get serializer => _$requestInfoSerializer;
  factory RequestInfo([updates(RequestInfoBuilder b)]) = _$RequestInfo;
  @nullable
  @BuiltValueField(wireName: 'RequestType')
  String get requestType;
  @nullable
  @BuiltValueField(wireName: 'TermSerialNum')
  String get termSerialNum;
  @nullable
  @BuiltValueField(wireName: 'CardNum')
  String get cardNum;
  @nullable
  @BuiltValueField(wireName: 'Amount')
  String get amount;
  @nullable
  @BuiltValueField(wireName: 'Stan')
  String get stan;
  @nullable
  @BuiltValueField(wireName: 'LocalDate')
  String get localDate;
  @nullable
  @BuiltValueField(wireName: 'LocalTime')
  String get localTime;
  @nullable
  @BuiltValueField(wireName: 'Track2')
  String get track2;
  @nullable
  @BuiltValueField(wireName: 'RequestNum')
  String get requestNum;
  @nullable
  @BuiltValueField(wireName: 'CurrencyCode')
  String get currencyCode;
  @nullable
  @BuiltValueField(wireName: 'PINBlock')
  String get pinBlock;
  @nullable
  @BuiltValueField(wireName: 'Product')
  String get product;
  @nullable
  @BuiltValueField(wireName: 'DriverCode')
  String get driverCode;
  @nullable
  @BuiltValueField(wireName: 'Odometer')
  String get odometer;
  @nullable
  @BuiltValueField(wireName: 'RegNo')
  String get regNo;
  @nullable
  @BuiltValueField(wireName: 'ProductCode')
  String get productCode;
  @nullable
  @BuiltValueField(wireName: 'Operator')
  String get optr;
  @nullable
  @BuiltValueField(wireName: 'Operatortype')
  String get operatorType;
  @nullable
  @BuiltValueField(wireName: 'version')
  String get version;
  String toJson() {
    return json.encode(serializers.serializeWith(RequestInfo.serializer, this));
  }

  static RequestInfo fromJson(String jsonString) {
    return serializers.deserializeWith(
        RequestInfo.serializer, json.decode(jsonString));
  }
}
