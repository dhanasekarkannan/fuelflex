import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fuelflex/config/text_strings.dart';
import 'package:fuelflex/model/masterKey_info.dart';
import 'package:fuelflex/model/req_info.dart';
import 'package:http/http.dart' as http;

class ServiceProviders with ChangeNotifier {
  MasterKeyInfo _masterKeyInfo;

  MasterKeyInfo get masterKeyInfo => _masterKeyInfo;
  String _testMsg = "hellow";
  String get testMsg => _testMsg;

  static Uri _url = Uri.parse(TextStrings.serviceURL);

  ReqInfo _reqInfo = ReqInfo((b) => b
    ..requestInfo.requestType = "MasterKeyInfo"
    ..requestInfo.termSerialNum = "00001111"
    ..requestInfo.version = "V_2.0.2");

  void setTest(String key) {
    _testMsg = key;
  }

  Future<bool> testServerRequest() async {
    print(_reqInfo);
    _reqInfo =
        _reqInfo.rebuild((b) => b..requestInfo.termSerialNum = "0821642298");
    print(_reqInfo.toJson());
    try {
      http.Response response = await http
          .post(_url, body: _reqInfo.toJson())
          .timeout(Duration(seconds: 10));
      print("${response.body}");
       _masterKeyInfo = MasterKeyInfo.fromJson(response.body);
      print("${_masterKeyInfo.merchantInfo.mobileNum1}");
      notifyListeners();
      return true;
    } on SocketException catch (e) {
      print(" SocketException ${e.message}");
      throw " SocketException ${e.message}";
    } on HttpException catch (e) {
      print(" HttpException ${e.message}");
      throw " HttpException ${e.message}";
    } catch (e) {
      print(" default exception ${e.message}");
      throw " default exception ${e.message}";
    }
  }
}
