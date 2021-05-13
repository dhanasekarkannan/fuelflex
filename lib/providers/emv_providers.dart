import 'package:flutter/services.dart';

class EmvProviders {
  static const platform = const MethodChannel('com.purplefire.fuelflex/pos');

  Future<String> getCardNo() async {
    String _cardNo = "dfsfdsfsdf";
    try {
      final String result = await platform.invokeMethod('getCardNo');
      _cardNo = '$result';
    } on PlatformException catch (e) {
      _cardNo = "Failed to get battery level: '${e.message}'.";
    }
    return _cardNo;
  }
}
