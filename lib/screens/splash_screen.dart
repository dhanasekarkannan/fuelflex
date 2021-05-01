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
     MasterKeyInfo _masterKeyInfo = ServiceProviders().masterKeyInfo;

  @override
  void initState() {
    super.initState();
    ServiceProviders().testServerRequest().then((value) {

      _masterKeyInfo = ServiceProviders().masterKeyInfo;
      value
          ? ScaffoldMessenger.of(context).showSnackBar(
              // Consumer<ServiceProviders>(
              //   builder: (_,service, child ) {
              //     return SnackBar(
              //     content: Text("Request Success ${service.masterKeyInfo.merchantInfo.merchantName}"),
                
              //   );
              //   }
              // ) as SnackBar,
              // 
              SnackBar(
                  content: Text("Request Success ${Provider.of<ServiceProviders>(context, listen : false).masterKeyInfo}"),
                
                )
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
    return BackgroundWidget(
      imagePath: TextStrings.appAssetBackgroundColorPath,
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
