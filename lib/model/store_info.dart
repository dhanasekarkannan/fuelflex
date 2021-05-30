library store_info;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fuelflex/model/serializers.dart';

part 'store_info.g.dart';

abstract class StoreInfo implements Built<StoreInfo, StoreInfoBuilder> {
  StoreInfo._();

  factory StoreInfo([updates(StoreInfoBuilder b)]) = _$StoreInfo;

  @BuiltValueField(wireName: 'inst_id')
  String get instId;
  @BuiltValueField(wireName: 'merchant_id')
  String get merchantId;
  @BuiltValueField(wireName: 'store_id')
  String get storeId;
  @BuiltValueField(wireName: 'store_status')
  String get storeStatus;
  @BuiltValueField(wireName: 'store_name')
  String get storeName;
  @BuiltValueField(wireName: 'store_location')
  String get storeLocation;
  String toJson() {
    return json.encode(serializers.serializeWith(StoreInfo.serializer, this));
  }

  static StoreInfo fromJson(String jsonString) {
    return serializers.deserializeWith(
        StoreInfo.serializer, json.decode(jsonString));
  }

  static Serializer<StoreInfo> get serializer => _$storeInfoSerializer;
}