import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;
  final String imagePath;

  const BackgroundWidget({
    Key key,
    this.child,
    this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height,
      width: _size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
