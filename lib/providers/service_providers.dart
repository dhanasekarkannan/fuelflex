import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fuelflex/config/text_strings.dart';
import 'package:fuelflex/model/masterKeyInfo_model.dart';
import 'package:fuelflex/model/reqInfo_model.dart';
import 'package:fuelflex/model/requestInfo_model.dart';
import 'package:http/http.dart' as http;

class ServiceProviders with ChangeNotifier {
  MasterKeyInfo _masterKeyInfo;
  String _testMsg = "hellow";
  MasterKeyInfo get masterKeyInfo => _masterKeyInfo;
  String get testMsg => _testMsg;

  static Uri _url = Uri.parse(TextStrings.serviceURL);

  ReqInfo _requestInfo = ReqInfo(
    requestInfo: RequestInfo(
      requestType: "MasterKeyInfo",
      termSerialNum: "0821642298",
      version: "V_1.1.2",
    ),
  );

  ReqInfo get requestInfo => _requestInfo;

  Future<bool> testServerRequest() async {
    try {
      http.Response response = await http
          .post(_url, body: jsonEncode(requestInfo))
          .timeout(Duration(seconds: 10));
        
      _masterKeyInfo = MasterKeyInfo.fromJson(jsonDecode(response.body));

      print("${jsonEncode(masterKeyInfo)}");

      print("______%%%%%_______");
      print("${jsonEncode(masterKeyInfo.merchantInfo.merchantName)}");
      _testMsg = masterKeyInfo.merchantInfo.merchantName;
      notifyListeners();
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
