import 'package:flutter/material.dart';

class MenuButtonWidget extends StatelessWidget {
  final String title;
  final Function onPressed;

  MenuButtonWidget({Key key, this.title, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.yellow[300],
            textStyle: TextStyle(color: Colors.pink, fontSize: 40)
            ),
        child: Text(
          title,
          style: TextStyle(color: Colors.pink),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
