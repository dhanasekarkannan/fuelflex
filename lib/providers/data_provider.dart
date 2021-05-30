import 'package:fuelflex/model/masterKey_info.dart';
import 'package:fuelflex/model/merchant_info.dart';
import 'package:fuelflex/model/req_info.dart';
import 'package:fuelflex/model/request_info.dart';
import 'package:fuelflex/model/resp_info.dart';
import 'package:fuelflex/model/store_info.dart';
import 'package:fuelflex/model/switch_info.dart';
import 'package:fuelflex/model/terminal_info.dart';
import 'package:fuelflex/model/validateUser_info.dart';

class DataProvider  {
  MerchantInfo _merchantInfo;
  MerchantInfo get merchantInfo => _merchantInfo;

  ReqInfo _reqInfo;
  ReqInfo get reqInfo => _reqInfo;

  RequestInfo _requestInfo;
  RequestInfo get requestInfo => _requestInfo;

  RespInfo _respInfo;
  RespInfo get respInfo => _respInfo;

  StoreInfo _storeInfo;
  StoreInfo get storeInfo => _storeInfo;

  SwitchInfo _switchInfo;
  SwitchInfo get switchInfo => _switchInfo;

  TerminalInfo _terminalInfo;
  TerminalInfo get terminalInfo => _terminalInfo;

  void setMasterKeyInfo(MasterKeyInfo masterKeyInfo) {
    _merchantInfo = MerchantInfo.fromJson(masterKeyInfo.merchantInfo.toJson());
    _requestInfo =
        RequestInfo.fromJson(masterKeyInfo.reqInfo.requestInfo.toJson());
    _respInfo = RespInfo.fromJson(masterKeyInfo.respInfo.toJson());
    _storeInfo = StoreInfo.fromJson(masterKeyInfo.storeInfo.toJson());
    _switchInfo =
        SwitchInfo.fromJson(masterKeyInfo.respInfo.switchInfo.toJson());
    _terminalInfo = TerminalInfo.fromJson(masterKeyInfo.terminalInfo.toJson());
  }

  void setValidateUserInfo(ValidateUser validateUser) {
    _merchantInfo = MerchantInfo.fromJson(validateUser.merchantInfo.toJson());
    _requestInfo =
        RequestInfo.fromJson(validateUser.reqInfo.requestInfo.toJson());
    _respInfo = RespInfo.fromJson(validateUser.respInfo.toJson());
    _storeInfo = StoreInfo.fromJson(validateUser.storeInfo.toJson());
    _switchInfo =
        SwitchInfo.fromJson(validateUser.respInfo.switchInfo.toJson());
    _terminalInfo = TerminalInfo.fromJson(validateUser.terminalInfo.toJson());
  }
}
