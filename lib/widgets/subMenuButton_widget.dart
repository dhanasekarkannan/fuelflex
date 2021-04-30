import 'package:flutter/material.dart';

class SubMenuButtonWidget extends ElevatedButton {
  final String title;
  final VoidCallback onPressed;

  SubMenuButtonWidget({this.title, this.onPressed})
      : super(
          child: Text(
            title.toUpperCase(),
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              primary: Colors.indigo[900],
              padding: EdgeInsets.all(20),
              textStyle: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.5)),
          onPressed: onPressed,
        );
}
