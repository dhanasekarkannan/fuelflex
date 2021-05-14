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
    Provider.of<ServiceProviders>(context).getMasterKeyInfo().then((value) {
      print("ServiceCAll ${value}");
      Provider.of<DataProvider>(context).setMasterKeyInfo(value);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Request Success  "),
      ));

      setState(() {
        _loading = false;
      });
    }).catchError((e) {
      print(e);
      _showDialog(e as String);
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: _size.width * 0.30,
              width: _size.width * 0.30,
              child: Image(
                image: AssetImage(TextStrings.appAssetOlaWhiteLogoPath),
              ),
            ),
            Expanded(
              child: FutureBuilder(
                  future: ServiceProviders().getTerminalNo(),
                  builder: (context, snapshot) {
                    List<Widget> children;
                    if (snapshot.hasData) {
                      children = <Widget>[
                        Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                          size: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Text('Result: ${snapshot.data}'),
                        )
                      ];
                    } else if (snapshot.hasError) {
                      children = <Widget>[
                        Icon(
                          Icons.error_outline,
                          color: Colors.red,
                          size: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Text('Error: ${snapshot.error}',
                              style: TextStyle(fontSize: 15)),
                        )
                      ];
                    } else {
                      children = <Widget>[
                        SizedBox(
                          child: CircularProgressIndicator(),
                          width: 60,
                          height: 60,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text('Awaiting result...'),
                        )
                      ];
                    }
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: children,
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
