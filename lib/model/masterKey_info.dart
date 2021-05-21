library master_key_info;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fuelflex/model/merchant_info.dart';
import 'package:fuelflex/model/req_info.dart';
import 'package:fuelflex/model/resp_info.dart';
import 'package:fuelflex/model/serializers.dart';
import 'package:fuelflex/model/store_info.dart';
import 'package:fuelflex/model/terminal_info.dart';

part 'masterKey_info.g.dart';

abstract class MasterKeyInfo
    implements Built<MasterKeyInfo, MasterKeyInfoBuilder> {
  static Serializer<MasterKeyInfo> get serializer => _$masterKeyInfoSerializer;

  MasterKeyInfo._();

  factory MasterKeyInfo([updates(MasterKeyInfoBuilder b)]) = _$MasterKeyInfo;
  @nullable
  @BuiltValueField(wireName: 'merchant_info')
  MerchantInfo get merchantInfo;
  @nullable
  @BuiltValueField(wireName: 'req_info')
  ReqInfo get reqInfo;
  @nullable
  @BuiltValueField(wireName: 'resp_info')
  RespInfo get respInfo;
  @nullable
  @BuiltValueField(wireName: 'store_info')
  StoreInfo get storeInfo;
  @nullable
  @BuiltValueField(wireName: 'terminal_info')
  TerminalInfo get terminalInfo;
  @nullable
  String toJson() {
    return json
        .encode(serializers.serializeWith(MasterKeyInfo.serializer, this));
  }

  @nullable
  static MasterKeyInfo fromJson(String jsonString) {
    return serializers.deserializeWith(
        MasterKeyInfo.serializer, json.decode(jsonString));
  }
}
