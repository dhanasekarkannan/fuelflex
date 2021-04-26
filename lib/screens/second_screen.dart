import 'package:flutter/material.dart';
import '../model/user_model.dart';

class SecondScreen extends StatelessWidget {
  static const routeName = "/secondScreen";
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("${data["title"]}"),
      ),
      body: Container(
        color: Colors.green,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed("checkArg",
                  arguments:
                      UserModel(title: "Third Screen", msg: "Hi How are you"));
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.yellow[300],
            ),
            child: Text(
              "Third Screen",
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
          ),
        ),
      ),
    );
  }
}
