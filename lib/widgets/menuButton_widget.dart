import 'package:flutter/material.dart';

class MenuButtonWidget extends ElevatedButton {
  final String title;
  final VoidCallback onPressed;

  MenuButtonWidget({this.title, this.onPressed})
      : super(
          child: Text(
            title.toUpperCase(),
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.orange[400],
              padding: EdgeInsets.all(20),
              textStyle: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.5)),
          onPressed: onPressed,
        );
}
