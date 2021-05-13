import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:fuelflex/model/masterKey_info.dart';
import 'package:fuelflex/model/merchant_info.dart';
import 'package:fuelflex/model/req_info.dart';
import 'package:fuelflex/model/request_info.dart';
import 'package:fuelflex/model/resp_info.dart';
import 'package:fuelflex/model/store_info.dart';
import 'package:fuelflex/model/switch_info.dart';
import 'package:fuelflex/model/terminal_info.dart';

part 'serializers.g.dart';

@SerializersFor([
  RequestInfo,
  ReqInfo,
  MasterKeyInfo,
  MerchantInfo,
  RespInfo,
  StoreInfo,
  SwitchInfo,
  TerminalInfo,

])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();