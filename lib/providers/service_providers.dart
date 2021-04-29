import 'dart:collection';

import 'package:fuelflex/config/text_strings.dart';
import 'package:fuelflex/model/RequestInfo_model.dart';
import 'package:http/http.dart' as http;

class ServiceProviders {
  static Uri _url = Uri.parse(TextStrings.serviceURL);

  RequestInfo _requestInfo = RequestInfo(
      requestType: "MasterKeyInfo",
      termSerialNum: "0821642298",
      version: "V_1.1.2");

  RequestInfo get requestInfo => _requestInfo;

  Map<String, dynamic> _generateRequestInfo() {
    Map<String, dynamic> _request;
    _request = {
      "RequestInfo": {
        "RequestType": requestInfo.requestType,
        "TermSerialNum": requestInfo.termSerialNum,
        "version": requestInfo.version
      }
    };
    return _request;
  }

  Future<bool> testServerRequest() async {
    try {
      http.Response response = await http
          .post(_url, body: _generateRequestInfo)
          .timeout(Duration(minutes: 1));
          print(response.statusCode);

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
