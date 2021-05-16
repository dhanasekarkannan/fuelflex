import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fuelflex/config/text_strings.dart';
import 'package:fuelflex/model/masterKey_info.dart';
import 'package:fuelflex/model/req_info.dart';
import 'package:fuelflex/model/request_info.dart';
import 'package:http/http.dart' as http;

class ServiceProviders with ChangeNotifier {
  static const platform = const MethodChannel('com.example.fuelflex/terminal');

  static Uri _url = Uri.parse(TextStrings.serviceURL);

<<<<<<< HEAD
  ReqInfo _requestInfo = ReqInfo(
    requestInfo: RequestInfo(
      requestType: "MasterKeyInfo",
      termSerialNum: "0821642298",
      version: "V_1.1.2",
    ),

    
  );
=======
  Future<String> getTerminalNo() async {
    String terminalNo = await platform.invokeMethod("getTerminalNo");
    print("Method channel Terminal No:  $terminalNo");
    return terminalNo;
  }

  Future<MasterKeyInfo> getMasterKeyInfo() async {
    String _terminalNo = await getTerminalNo();
>>>>>>> methodchannel

    RequestInfo _requestInfo = RequestInfo((b) => b
      ..requestType = TextStrings.masterKeyInfoRequestType
      ..termSerialNum = _terminalNo
      ..version = TextStrings.version);
    ReqInfo _reqInfo =
        ReqInfo((b) => b..requestInfo = _requestInfo.toBuilder());
    String masterKeyInfo = await serviceRequest(_reqInfo);

<<<<<<< HEAD
  void setTest(String key) {
    _testMsg = key;
    setName("ashok");
    notifyListeners();
  }

  void setName(String key) {
    print("setname called");
    _masterKeyInfo.merchantInfo.merchantName = key;
    notifyListeners();
=======
    MasterKeyInfo masterTest = MasterKeyInfo.fromJson(masterKeyInfo);

    return masterTest;
>>>>>>> methodchannel
  }

  Future<String> serviceRequest(ReqInfo reqInfo) async {
    try {
      http.Response response = await http
          .post(_url, body: reqInfo.toJson())
          .timeout(Duration(seconds: 10));
<<<<<<< HEAD

      _masterKeyInfo = MasterKeyInfo.fromJson(jsonDecode(response.body));

      // print("${jsonEncode(masterKeyInfo)}");
=======
>>>>>>> methodchannel

      return response.body;
    } on SocketException catch (e) {
      throw ("SocketException in fetching response");
    } on HttpException catch (e) {
      throw ("HttpException in fetching response");
    } catch (e) {
      throw ("Error in fetching response");
    }
  }
}
