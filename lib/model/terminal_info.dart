library terminal_info;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fuelflex/model/serializers.dart';

part 'terminal_info.g.dart';

abstract class TerminalInfo
    implements Built<TerminalInfo, TerminalInfoBuilder> {
  TerminalInfo._();

  factory TerminalInfo([updates(TerminalInfoBuilder b)]) = _$TerminalInfo;

  @BuiltValueField(wireName: 'inst_id')
  String get instId;
  @BuiltValueField(wireName: 'merchant_id')
  String get merchantId;
  @BuiltValueField(wireName: 'store_id')
  String get storeId;
  @BuiltValueField(wireName: 'term_id')
  String get termId;
  @BuiltValueField(wireName: 'terminal_status')
  String get terminalStatus;
  @nullable
  @BuiltValueField(wireName: 'terminal_type_id')
  String get terminalTypeId;
  @BuiltValueField(wireName: 'terminal_name')
  String get terminalName;
  @BuiltValueField(wireName: 'machine_id')
  String get machineId;
  @BuiltValueField(wireName: 'term_loc')
  String get termLoc;
  @BuiltValueField(wireName: 'mcc')
  String get mcc;
  @BuiltValueField(wireName: 'country_code')
  String get countryCode;
  @BuiltValueField(wireName: 'curr_code')
  String get currCode;
  @BuiltValueField(wireName: 'tmk')
  String get tmk;
  @BuiltValueField(wireName: 'tpk')
  String get tpk;
  @nullable
  @BuiltValueField(wireName: 'mack')
  String get mack;
  @BuiltValueField(wireName: 'batch_id')
  String get batchId;
  @BuiltValueField(wireName: 'route_id')
  String get routeId;
  @BuiltValueField(wireName: 'echo_interval')
  int get echoInterval;
  String toJson() {
    return json
        .encode(serializers.serializeWith(TerminalInfo.serializer, this));
  }

  static TerminalInfo fromJson(String jsonString) {
    return serializers.deserializeWith(
        TerminalInfo.serializer, json.decode(jsonString));
  }

  static Serializer<TerminalInfo> get serializer => _$terminalInfoSerializer;
}