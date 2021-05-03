import 'package:flutter/material.dart';
import 'package:fuelflex/config/text_strings.dart';
import 'package:fuelflex/model/masterKeyInfo_model.dart';
import 'package:fuelflex/providers/service_providers.dart';
import 'package:fuelflex/widgets/Background_widget.dart';
import 'package:provider/provider.dart';
import 'loginPage_screen.dart';

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
    // TODO: implement dispose
    super.dispose();
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

      Future.delayed(Duration(seconds: 3), () {
        value
            ? Navigator.of(context).pushNamed(LoginPageScreen.routeName)
            : ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Request Failed"),
                ),
              );
      });

      setState(() {
        _loading = false;
      });
    }).catchError((e) {
      print(e);
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    if (_loading) {
      serviceCall();
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return BackgroundWidget(
      imagePath: TextStrings.appAssetBackgroundColorPath,
      child: Center(
        child: Column(
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
                : Container(
                    child: Text(Provider.of<ServiceProviders>(context)
                        .masterKeyInfo
                        .merchantInfo
                        .middleName),
                  ),
          ],
        ),
      ),
    );
  }
}
