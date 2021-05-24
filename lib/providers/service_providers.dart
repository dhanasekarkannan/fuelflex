import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fuelflex/config/text_strings.dart';
import 'package:fuelflex/model/fuelFlexApiException.dart';
import 'package:fuelflex/model/masterKey_info.dart';
import 'package:fuelflex/model/req_info.dart';
import 'package:fuelflex/model/request_info.dart';
import 'package:fuelflex/model/validateUser_info.dart';
import 'package:http/http.dart' as http;

class ServiceProviders with ChangeNotifier {
  static const platform = const MethodChannel('com.example.fuelflex/terminal');

  static Uri _url = Uri.parse(TextStrings.serviceURL);

  Future<String> getTerminalNo() async {
    String terminalNo = await platform.invokeMethod("getTerminalNo");
    print("Method channel Terminal No:  $terminalNo");
    return terminalNo;
  }

  Future<MasterKeyInfo> getMasterKeyInfo() async {
    String _terminalNo = await getTerminalNo();

    RequestInfo _requestInfo = RequestInfo((b) => b
      ..requestType = TextStrings.masterKeyInfoRequestType
      ..termSerialNum = _terminalNo
      ..version = TextStrings.version);
    ReqInfo _reqInfo =
        ReqInfo((b) => b..requestInfo = _requestInfo.toBuilder());
    String masterKeyInfo = await serviceRequest(_reqInfo);

    MasterKeyInfo masterTest = MasterKeyInfo.fromJson(masterKeyInfo);
    masterTest.toBuilder();

    return masterTest;
  }


  Future<ValidateUser> getValidateUser() async {
    String _terminalNo = await getTerminalNo();

    RequestInfo _requestInfo = RequestInfo((b) => b
      ..requestType = TextStrings.validateUserRequestType
      ..termSerialNum = "0821642299"
      ..version = TextStrings.version
      ..optr = "123456789012"
      ..operatorType = "DEALER"); 
    ReqInfo _reqInfo =
        ReqInfo((b) => b..requestInfo = _requestInfo.toBuilder());
    String validateUserResponse = await serviceRequest(_reqInfo);

    ValidateUser validateUser = ValidateUser.fromJson(validateUserResponse);
   

    return validateUser;
  }

  Future<String> serviceRequest(ReqInfo reqInfo) async {
    try {
      http.Response response = await http
          .post(_url, body: reqInfo.toJson())
          .timeout(Duration(seconds: 10));

      return response.body;
    } on SocketException {
      throw FuelFlexApiException(
          message: "SocketException in fetching response");
    } on HttpException {
      throw FuelFlexApiException(message: "HttpException in fetching response");
    } catch (e) {
      throw FuelFlexApiException(message: "Error in fetching response");
    }
  }
}
