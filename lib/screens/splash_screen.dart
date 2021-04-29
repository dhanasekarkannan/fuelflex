import 'package:flutter/material.dart';
import 'package:fuelflex/config/text_strings.dart';
import 'package:fuelflex/providers/service_providers.dart';
import 'package:fuelflex/widgets/colorBackground_widget.dart';
import 'loginPage_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = TextStrings.appSplashScreenPath;

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    ServiceProviders().testServerRequest().then((value) {
      value
          ? ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Request Success"),
              ),
            )
          : ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Request Failed"),
              ),
            );

      value
          ? Navigator.of(context).pushNamed(LoginPageScreen.routeName)
          : ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Request Failed"),
              ),
            );
    }).catchError((e) {
      print(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return ColorBackgroundWidget(
      child: Center(
        child: Container(
            height: _size.width * 0.30,
            width: _size.width * 0.30,
            child:
                Image(image: AssetImage(TextStrings.appAssetOlaWhiteLogoPath))),
      ),
    );
  }
}
