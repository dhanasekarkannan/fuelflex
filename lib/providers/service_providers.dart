import 'dart:convert';

import 'package:fuelflex/config/text_strings.dart';
import 'package:fuelflex/model/requestInfo_model.dart';
import 'package:http/http.dart' as http;

class ServiceProviders {
  static Uri _url = Uri.parse(TextStrings.serviceURL);

  TestRequest _requestInfo = TestRequest(
      requestInfo: RequestInfo(
          requestType: "MasterKeyInfo",
          version: "V_1.1.2",
          termSerialNum: "0821642298"));

  TestRequest get requestInfo => _requestInfo;

  

  Future<bool> testServerRequest() async {
    try {
      http.Response response = await http
          .post(
            _url,
            body: jsonEncode(requestInfo),
          )
          .timeout(Duration(seconds: 10));
      print(response.statusCode);
      print(response.body);
      Map<String, dynamic> test = {...jsonDecode(response.body)};
      print("${jsonEncode(test)}");

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
