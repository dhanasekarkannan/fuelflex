import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fuelflex/config/text_strings.dart';
import 'package:fuelflex/model/masterKey_info.dart';
import 'package:fuelflex/model/request_info.dart';
import 'package:http/http.dart' as http;

class ServiceProviders with ChangeNotifier {
  
  static const platform = const MethodChannel('com.example.fuelflex/terminal');

  MasterKeyInfo _masterKeyInfo;

  MasterKeyInfo get masterKeyInfo => _masterKeyInfo;

  static Uri _url = Uri.parse(TextStrings.serviceURL);

  
  RequestInfo _requestInfo = RequestInfo();

  RequestInfo get requestInfo => _requestInfo;

  Future<String> getTerminalNo() async{

   String terminalNo = await platform.invokeMethod("getTerminalNo");
    print("Method channel Terminal No:  $terminalNo");
    return terminalNo;
  }
 
  Future<bool> testServerRequest() async {
    try {
      http.Response response = await http
          .post(_url, body: jsonEncode(requestInfo))
          .timeout(Duration(seconds: 10));
  
      _masterKeyInfo = MasterKeyInfo.fromJson(jsonDecode(response.body));

      notifyListeners();
      return true;
    } on SocketException catch (e) {
      throw("SocketException in fetching response");
    } on HttpException catch (e) {
      throw("HttpException in fetching response");
    } catch (e) {
      throw("Error in fetching response");
    }
  }
}
