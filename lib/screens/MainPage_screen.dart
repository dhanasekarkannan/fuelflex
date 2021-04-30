import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:fuelflex/config/text_strings.dart';
import 'package:fuelflex/widgets/Background_widget.dart';
import 'package:fuelflex/widgets/subMenuButton_widget.dart';

class MainPageScreen extends StatelessWidget {
  static const String routeName = TextStrings.appMainScreenPath;
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      body: BackgroundWidget(
        imagePath: TextStrings.appAssetBackgroundPlainPath,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: _size.height * 0.20,
              width: _size.width * 0.50,
              child: Image(
                image: AssetImage(
                  TextStrings.appAssetTapIconPath,
                ),
                fit: BoxFit.contain,
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
                        title: MenuItems().menuItems[index]["title"] as String,
                        onPressed: () {},
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
    );
  }
}

class MenuItems {
  List<Map<String, dynamic>> _menuItems = [
    {"title": "CSA", "onPressed": () {}},
    {"title": "Manager", "onPressed": () {}},
    {"title": "Dealer", "onPressed": () {}},
  ];

  UnmodifiableListView<Map<String, dynamic>> get menuItems =>
      UnmodifiableListView(_menuItems);
}
