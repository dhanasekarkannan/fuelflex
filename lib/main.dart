import 'package:flutter/material.dart';
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
      home: LoginPageScreen(),
      routes: {
        LoginPageScreen.routeName: (context) => LoginPageScreen(),
        SecondScreen.routeName: (context) => SecondScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == ThirdScreen.routeName) {
          return MaterialPageRoute(builder: (context) {
            return ThirdScreen(data: settings.arguments);
          });
        }
        return null;
      },
    );
  }
}
