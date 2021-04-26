import 'package:flutter/material.dart';
import '../model/user_model.dart';

class ThirdScreen extends StatelessWidget {
  static const routeName = "/thirdScreen";
  final UserModel data;

  const ThirdScreen({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${data.title}"),
      ),
      body: Container(
        color: Colors.yellow,
        child: Center(
          child: Text("${data.msg}"),
        ),
      ),
    );
  }
}
