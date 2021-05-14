library validate_user;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fuelflex/model/merchant_info.dart';

import 'req_info.dart';
import 'resp_info.dart';
import 'serializers.dart';
import 'store_info.dart';
import 'terminal_info.dart';

part 'validateUser_info.g.dart';

abstract class ValidateUser
    implements Built<ValidateUser, ValidateUserBuilder> {
  ValidateUser._();

  factory ValidateUser([updates(ValidateUserBuilder b)]) = _$ValidateUser;

  @BuiltValueField(wireName: 'merchant_info')
  MerchantInfo get merchantInfo;
  @BuiltValueField(wireName: 'req_info')
  ReqInfo get reqInfo;
  @BuiltValueField(wireName: 'resp_info')
  RespInfo get respInfo;
  @BuiltValueField(wireName: 'store_info')
  StoreInfo get storeInfo;
  @BuiltValueField(wireName: 'terminal_info')
  TerminalInfo get terminalInfo;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ValidateUser.serializer, this));
  }

  static ValidateUser fromJson(String jsonString) {
    return serializers.deserializeWith(
        ValidateUser.serializer, json.decode(jsonString));
  }

  static Serializer<ValidateUser> get serializer => _$validateUserSerializer;
}