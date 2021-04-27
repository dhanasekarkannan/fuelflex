import 'package:flutter/material.dart';
import 'package:fuelflex/config/text_strings.dart';
import 'package:fuelflex/screens/second_screen.dart';
import 'package:fuelflex/widgets/menuButton_widget.dart';

class LoginPageScreen extends StatelessWidget {
  static const routeName = TextStrings.appLoginScreenPath;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: _size.height,
        width: _size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(TextStrings.appAssetLogoPath),
          ),
        ),
        color: Colors.blue[900],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(),
              Container(
                height: _size.height * 0.20,
                width: _size.width * 0.30,
                child: Image(
                  image: AssetImage(TextStrings.appAssetLogoPath),
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                height: _size.height * 0.15,
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
                height: _size.height * 0.20,
                width: _size.width * 0.30,
                child: Image(
                  image: AssetImage(TextStrings.appAssetLogoPath),
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
