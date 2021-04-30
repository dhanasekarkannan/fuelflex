import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fuelflex/screens/MainPage_screen.dart';
import 'package:fuelflex/screens/insertCardPage_screen.dart';
import 'package:fuelflex/screens/saleMenuPage_screen.dart';
import 'package:fuelflex/screens/splash_screen.dart';
import 'package:fuelflex/screens/tagTapPage_screen.dart';
import 'screens/loginPage_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
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
        TagTapPageScreen.routeName: (context) => TagTapPageScreen(),
        SaleMenuPageScreen.routeName: (context) => SaleMenuPageScreen(),
        InsertCardPageScreen.routeName: (context) => InsertCardPageScreen(),
      },
      onGenerateRoute: (settings) {
        // if (settings.name == ThirdScreen.routeName) {
        //   return MaterialPageRoute(builder: (context) {
        //     // return ThirdScreen(data: settings.arguments);
        //   });
        // }
        return null;
      },
    );
  }
}
