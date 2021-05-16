import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fuelflex/config/text_strings.dart';
import 'package:fuelflex/providers/data_provider.dart';
import 'package:fuelflex/providers/service_providers.dart';
import 'package:fuelflex/screens/mainPage_screen.dart';
import 'package:fuelflex/screens/insertCardPage_screen.dart';
import 'package:fuelflex/screens/saleMenuPage_screen.dart';
import 'package:fuelflex/screens/splash_screen.dart';
import 'package:fuelflex/screens/tagTapPage_screen.dart';
import 'package:provider/provider.dart';
import 'screens/loginPage_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp( 
    MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => ServiceProviders(),
      ),
      ChangeNotifierProvider(
        create: (_) => DataProvider(),
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 final _navigatorKey = GlobalKey<NavigatorState>();
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
    primarySwatch: Colors.blue,
        ),
        home: SplashScreen(),
        navigatorKey: _navigatorKey,
        routes: {
    SplashScreen.routeName: (context) => SplashScreen(),
    LoginPageScreen.routeName: (context) => LoginPageScreen(),
    MainPageScreen.routeName: (context) => MainPageScreen(),
    TagTapPageScreen.routeName: (context) => TagTapPageScreen(),
    SaleMenuPageScreen.routeName: (context) => SaleMenuPageScreen(),
    InsertCardPageScreen.routeName: (context) => InsertCardPageScreen(),
        },
      );
  }
}
