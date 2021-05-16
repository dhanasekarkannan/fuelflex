import 'package:flutter/material.dart';
import 'package:fuelflex/config/text_strings.dart';
import 'package:fuelflex/providers/data_provider.dart';
import 'package:fuelflex/providers/service_providers.dart';
import 'package:fuelflex/widgets/Background_widget.dart';
import 'package:provider/provider.dart';

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
   
    Provider.of<ServiceProviders>(context,listen : false )
        .getMasterKeyInfo()
        .then((masterKeyInfo) {
      Provider.of<DataProvider>(context, listen: false)
          .setMasterKeyInfo(masterKeyInfo);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Request Success"),
      ));

      setState(() {
        _loading = false;
      });
<<<<<<< HEAD
      Future.delayed(Duration(seconds: 3), () {
        // value
        //     ? Navigator.of(context).pushNamed(LoginPageScreen.routeName)
        //     : ScaffoldMessenger.of(context).showSnackBar(
        //         SnackBar(
        //           content: Text("Request Failed"),
        //         ),
        //       );
        Provider.of<ServiceProviders>(context, listen: false).setTest("Eswar");
      }).catchError((e) {
        print(e.message);
        
      });
=======
       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Request Success"),

      ));

      Navigator.of(context).popAndPushNamed(TextStrings.appLoginScreenPath);
>>>>>>> methodchannel
    }).catchError((e) {
      _showDialog(e as String);
    });
  }

  @override
  void initState() {
    super.initState();
    Future<void>.delayed(Duration(seconds: 0), (){
      serviceCall();
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    
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
<<<<<<< HEAD
            _loading
                ? CircularProgressIndicator()
                : Consumer<ServiceProviders>(builder: (_, service, __) {
                    return Container(
                      child:
                          Text(service.masterKeyInfo.merchantInfo.merchantName),
                    );
                  }),
            _loading
                ? CircularProgressIndicator()
                : Container(
                    child: Text(Provider.of<ServiceProviders>(
                      context,
                    ).masterKeyInfo.merchantInfo.merchantName),
                  ),
            _loading
                ? CircularProgressIndicator()
                : Container(
                    child: Text(Provider.of<ServiceProviders>(
                      context,
                    ).testMsg),
                  ),
            Consumer<ServiceProviders>(
              builder: ( context, service , widget ){
                return ElevatedButton(
                  onPressed: () {
                    print("on pressed Called");
                    service.setName("Rajesh ___ ####");
                        print("on pressed Called 2");
                  },
                  child: Text(service
                      .masterKeyInfo
                      .terminalInfo
                      .storeId));
              },
                         
            ),
=======
>>>>>>> methodchannel
          ],
        ),
      ),
    );
  }
}
