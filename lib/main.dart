import 'package:flutter/material.dart';
import 'package:fuelflex/screens/MainPage_screen.dart';
import 'package:fuelflex/screens/splash_screen.dart';
import 'package:fuelflex/screens/tapTapPage_screen.dart';
import 'screens/second_screen.dart';
import 'screens/loginPage_screen.dart';
import 'screens/thirdPage_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        LoginPageScreen.routeName: (context) => LoginPageScreen(),
        MainPageScreen.routeName: (context) => MainPageScreen(),
        TapTagPageScreen.routeName: (context) => TapTagPageScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == ThirdScreen.routeName) {
          return MaterialPageRoute(builder: (context) {
            // return ThirdScreen(data: settings.arguments);
          });
        }
        return null;
      },
    );
  }
}
