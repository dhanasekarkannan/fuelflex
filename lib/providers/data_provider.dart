import 'package:flutter/material.dart';
import 'package:fuelflex/model/masterKey_info.dart';
import 'package:fuelflex/model/merchant_info.dart';
import 'package:fuelflex/model/req_info.dart';
import 'package:fuelflex/model/request_info.dart';
import 'package:fuelflex/model/resp_info.dart';
import 'package:fuelflex/model/store_info.dart';
import 'package:fuelflex/model/switch_info.dart';
import 'package:fuelflex/model/terminal_info.dart';

class DataProvider with ChangeNotifier{

MerchantInfo _merchantInfo = MerchantInfo();
MerchantInfo get merchantInfo => _merchantInfo;

ReqInfo _reqInfo = ReqInfo();
ReqInfo get reqInfo => _reqInfo;

RequestInfo _requestInfo = RequestInfo();
RequestInfo get requestInfo => _requestInfo;

RespInfo _respInfo = RespInfo();
RespInfo get respInfo => _respInfo;

StoreInfo _storeInfo = StoreInfo();
StoreInfo get storeInfo => _storeInfo;

SwitchInfo _switchInfo = SwitchInfo();
SwitchInfo get switchInfo => _switchInfo;

TerminalInfo _terminalInfo = TerminalInfo();
TerminalInfo get terminalInfo => _terminalInfo;

void setMasterKeyInfo( MasterKeyInfo masterKeyInfo ){
  print("setMasterKeyInfo ${masterKeyInfo.merchantInfo.mobileNum1}");
_merchantInfo = MerchantInfo.fromJson(masterKeyInfo.merchantInfo.toJson());
_requestInfo = RequestInfo.fromJson(masterKeyInfo.reqInfo.requestInfo.toJson());
_respInfo = RespInfo.fromJson(masterKeyInfo.respInfo.toJson());
_storeInfo = StoreInfo.fromJson(masterKeyInfo.storeInfo.toJson());
_switchInfo = SwitchInfo.fromJson(masterKeyInfo.respInfo.switchInfo.toJson());
_terminalInfo = TerminalInfo.fromJson(masterKeyInfo.terminalInfo.toJson());

print("data Provider ${_merchantInfo.merchantId}");
}


}