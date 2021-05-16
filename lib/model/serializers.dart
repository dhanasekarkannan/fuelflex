import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
<<<<<<< HEAD
import 'package:fuelflex/model/reqInfo_model.dart';
import 'package:fuelflex/model/requestInfo_model.dart';
=======
import 'package:fuelflex/model/masterKey_info.dart';
import 'package:fuelflex/model/merchant_info.dart';
import 'package:fuelflex/model/req_info.dart';
import 'package:fuelflex/model/request_info.dart';
import 'package:fuelflex/model/resp_info.dart';
import 'package:fuelflex/model/store_info.dart';
import 'package:fuelflex/model/switch_info.dart';
import 'package:fuelflex/model/terminal_info.dart';
import 'package:fuelflex/model/validateUser_info.dart';
>>>>>>> methodchannel

part 'serializers.g.dart';

@SerializersFor([
  RequestInfo,
<<<<<<< HEAD
  ReqInfo
=======
  ReqInfo,
  MasterKeyInfo,
  MerchantInfo,
  RespInfo,
  StoreInfo,
  SwitchInfo,
  TerminalInfo,
  ValidateUser

>>>>>>> methodchannel
])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();