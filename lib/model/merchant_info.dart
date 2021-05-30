library merchant_info;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fuelflex/model/serializers.dart';

part 'merchant_info.g.dart';

abstract class MerchantInfo
    implements Built<MerchantInfo, MerchantInfoBuilder> {
  static Serializer<MerchantInfo> get serializer => _$merchantInfoSerializer;
  MerchantInfo._();

  factory MerchantInfo([updates(MerchantInfoBuilder b)]) = _$MerchantInfo;

  @BuiltValueField(wireName: 'inst_id')
  String get instId;
  @BuiltValueField(wireName: 'merchant_id')
  String get merchantId;
  @BuiltValueField(wireName: 'merchant_name')
  String get merchantName;
  @BuiltValueField(wireName: 'merchant_status')
  String get merchantStatus;
  @BuiltValueField(wireName: 'bin_id')
  String get binId;
  @BuiltValueField(wireName: 'product_id')
  String get productId;
  @BuiltValueField(wireName: 'sub_product_id')
  String get subProductId;
  @BuiltValueField(wireName: 'merchant_type_id')
  String get merchantTypeId;
  @BuiltValueField(wireName: 'first_name')
  String get firstName;
  @BuiltValueField(wireName: 'middle_name')
  String get middleName;
  @BuiltValueField(wireName: 'last_name')
  String get lastName;
  @BuiltValueField(wireName: 'mobile_num_1')
  String get mobileNum1;
  @BuiltValueField(wireName: 'mail_id_1')
  String get mailId1;
  String toJson() {
    return json
        .encode(serializers.serializeWith(MerchantInfo.serializer, this));
  }

  static MerchantInfo fromJson(String jsonString) {
    return serializers.deserializeWith(
        MerchantInfo.serializer, json.decode(jsonString));
  }
}
