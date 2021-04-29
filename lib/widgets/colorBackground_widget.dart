import 'package:flutter/material.dart';
import 'package:fuelflex/config/text_strings.dart';

class ColorBackgroundWidget extends StatelessWidget {
  final Widget child;

  const ColorBackgroundWidget({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height,
      width: _size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(TextStrings.appAssetBackgroundColorPath),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
