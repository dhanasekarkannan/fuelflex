import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fuelflex/config/text_strings.dart';
import 'package:fuelflex/providers/service_providers.dart';
import 'package:fuelflex/screens/MainPage_screen.dart';
import 'package:fuelflex/widgets/Background_widget.dart';
import 'package:fuelflex/widgets/menuButton_widget.dart';
import 'package:provider/provider.dart';

class LoginPageScreen extends StatelessWidget {
  static const String routeName = TextStrings.appLoginScreenPath;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: BackgroundWidget(
        imagePath: TextStrings.appAssetBackgroundColorPath,
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
                    TextStrings.appAssetOlaCardPlainLogoPath,
                  ),
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                width: _size.width * 0.50,
                child: Consumer<ServiceProviders>(
                    builder: (_, serviceProvider, __) {
                  return MenuButtonWidget(
                    // title: TextStrings.loginText,
                    title: serviceProvider.testMsg,
                    onPressed: () {
                      Navigator.of(context).pushNamed(MainPageScreen.routeName);
                    },
                  );
                }),
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
