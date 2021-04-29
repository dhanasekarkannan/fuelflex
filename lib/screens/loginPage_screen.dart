import 'package:flutter/material.dart';
import 'package:fuelflex/config/text_strings.dart';
import 'package:fuelflex/screens/second_screen.dart';
import 'package:fuelflex/widgets/colorBackground_widget.dart';
import 'package:fuelflex/widgets/menuButton_widget.dart';

class LoginPageScreen extends StatelessWidget {
  static const String routeName = TextStrings.appLoginScreenPath;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: ColorBackgroundWidget(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(),
              Container(
                height: _size.height * 0.20,
                width: _size.width * 0.50,
                child: Image(
                  image: AssetImage(
                    TextStrings.appAssetLogoPath,
                  ),
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                width: _size.width * 0.50,
                child: MenuButtonWidget(
                  title: TextStrings.textLogin,
                  onPressed: () {
                    Navigator.of(context).pushNamed(SecondScreen.routeName,
                        arguments: {"title": "dashboard", "msg": "flexfuel"});
                  },
                ),
              ),
              Spacer(),
              Container(
                height: _size.width * 0.25,
                width: _size.width * 0.25,
                child: Image(
                  image: AssetImage(TextStrings.appAssetOlaWhiteLogoPath),
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
