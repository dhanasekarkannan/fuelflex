import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fuelflex/config/text_strings.dart';
import 'package:fuelflex/providers/service_providers.dart';
import 'package:fuelflex/widgets/Background_widget.dart';
import 'package:provider/provider.dart';
import 'loginPage_screen.dart';
import 'package:http/http.dart' as http;

class SplashScreen extends StatefulWidget {
  static const routeName = TextStrings.appSplashScreenPath;

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //
  bool _loading = true;

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _showDialog(String msg) async {
    return showDialog<void>(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text("Error"),
          content: Text("$msg"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("OK"))
          ],
        );
      },
      barrierDismissible: false,
    );
  }

  void serviceCall() {
    Provider.of<ServiceProviders>(context).testServerRequest().then((value) {
      value
          ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Request Success  "),
            ))
          : ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Request Failed"),
              ),
            );
      setState(() {
        _loading = false;
      });
      Future.delayed(Duration(seconds: 3), () {
        value
            ? Navigator.of(context).pushNamed(LoginPageScreen.routeName)
            : ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Request Failed"),
                ),
              );
      }).catchError((e) {
        print(e.message);
      });
    }).catchError((e) {
      _showDialog(e as String);
    });
  }

  Future<void> _checkNetworkConnectivity() async {
    try {
      http.Response response = await http.post(
        Uri.parse("https://www.google.com/"),
      );
    } on SocketException catch (e) {
      print(" SocketException ${e.message}");

      throw ("Socket Exception");
    } on HttpException catch (e) {
      print(" SocketException ${e.message}");
      throw ("Socket Exception");
    } catch (e) {
      print(" default exception ${e.message}");
      throw (e.message);
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // _checkNetworkConnectivity()
    //     .then((_) => {
    if (_loading) {
      serviceCall();
    }
    //         })
    //     .catchError((e) {
    //   _showDialog(e );
    // });
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return BackgroundWidget(
      imagePath: TextStrings.appAssetBackgroundColorPath,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: _size.width * 0.30,
              width: _size.width * 0.30,
              child: Image(
                image: AssetImage(TextStrings.appAssetOlaWhiteLogoPath),
              ),
            ),
            _loading
                ? CircularProgressIndicator()
                : Consumer<ServiceProviders>(builder: (_, service, __) {
                    return Container(
                      child: Text(Provider.of<ServiceProviders>(context)
                          .masterKeyInfo
                          .merchantInfo
                          .merchantName),
                    );
                  }),
          ],
        ),
      ),
    );
  }
}
