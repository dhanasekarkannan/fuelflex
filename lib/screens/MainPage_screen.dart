import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:fuelflex/config/text_strings.dart';
import 'package:fuelflex/widgets/Background_widget.dart';
import 'package:fuelflex/widgets/subMenuButton_widget.dart';

class MainPageScreen extends StatefulWidget {
  static const String routeName = TextStrings.appMainScreenPath;
  @override
  _MainPageScreenState createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _initializeTimer();
  }

  void _initializeTimer() {
    if (_timer != null) {
      _timer.cancel();
    }

    _timer = Timer(const Duration(seconds: 15), _logOutUser);
  }

  void _logOutUser() {
    _timer?.cancel();
    _timer = null;

    // Popping all routes and pushing welcome screen
    Navigator.of(context)
        .pushNamedAndRemoveUntil(TextStrings.appLoginScreenPath, (_) => false);
  }

  void _handleUserInteraction([_]) {
    _initializeTimer();
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
            onTap: _handleUserInteraction,
      child: Scaffold(
        body: BackgroundWidget(
          imagePath: TextStrings.appAssetBackgroundPlainPath,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                  height: _size.height * 0.20,
                  width: _size.width * 0.50,
                  child: Image(
                    image: AssetImage(
                      TextStrings.appAssetOlaCardColorLogoPath,
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: _size.width * 0.75,
                  child: ListView.builder(
                    itemBuilder: (_, index) {
                      return Container(
                        padding: const EdgeInsets.all(10.0),
                        child: SubMenuButtonWidget(
                          title: MenuItems().menuItems[index]["title"],
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                                MenuItems().menuItems[index]["onPressed"]);
                          },
                        ),
                      );
                    },
                    itemCount: MenuItems().menuItems.length,
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}

class MenuItems {
  List<Map<String, dynamic>> _menuItems = [
    {"title": "CSA", "onPressed": TextStrings.appTagTapScreenPath},
    {"title": "Manager", "onPressed": TextStrings.appSaleScreenPath},
    {"title": "Dealer", "onPressed": TextStrings.appTagTapScreenPath},
  ];

  UnmodifiableListView<Map<String, dynamic>> get menuItems =>
      UnmodifiableListView(_menuItems);
}
