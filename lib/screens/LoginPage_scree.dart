import 'package:flutter/material.dart';
import 'package:fuelflex/screens/second_screen.dart';

class LoginPageScreen extends StatelessWidget {
  static const routeName = "/‰";

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
       height : _size.height,
        width: _size.width,
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: _size.height * 0.20  ,
                width: _size.width * 0.30,
                child: Image(
                  image: AssetImage("assets/images/ocard_logo_2-01.png"),
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                height: _size.height * 0.20  ,
                width: _size.width * 0.50,
                              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/secondScreen", arguments: {
                      "title" : "dashboard",
                      "msg" : "flexfuel"
                    } );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow[300],
                  ),
                  child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40 ),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
