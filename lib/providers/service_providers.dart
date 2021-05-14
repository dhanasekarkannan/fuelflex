import 'dart:convert';
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

  MasterKeyInfo _masterKeyInfo;

  MasterKeyInfo get masterKeyInfo => _masterKeyInfo;

  static Uri _url = Uri.parse(TextStrings.serviceURL);

  Future<String> getTerminalNo() async {
    String terminalNo = await platform.invokeMethod("getTerminalNo");
    print("Method channel Terminal No:  $terminalNo");
    return terminalNo;
  }

  Future<MasterKeyInfo> getMasterKeyInfo() async {
    print("test1");
    String _terminalNo = await getTerminalNo();
        print("test2");

    RequestInfo _requestInfo = RequestInfo((b) => b
      ..requestType = TextStrings.masterKeyInfoRequestType
      ..termSerialNum = _terminalNo
      ..version = TextStrings.version);
          print("test3");

    String masterKeyInfo = await serviceRequest(_requestInfo);
        print("test4");

      return MasterKeyInfo.fromJson(jsonDecode(masterKeyInfo));
  }

  Future<String> serviceRequest(RequestInfo requestInfo) async {
    try {
      http.Response response = await http
          .post(_url, body: jsonEncode(requestInfo))
          .timeout(Duration(seconds: 10));

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
