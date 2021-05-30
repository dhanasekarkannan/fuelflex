import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:fuelflex/config/text_strings.dart';
import 'package:fuelflex/widgets/Background_widget.dart';

class SaleMenuPageScreen extends StatefulWidget {
  static const String routeName = TextStrings.appSaleScreenPath;

  @override
  _SaleMenuPageScreenState createState() => _SaleMenuPageScreenState();
}

class _SaleMenuPageScreenState extends State<SaleMenuPageScreen> {
  String _value = MenuItems().menuItems[1]["title"];
  TextEditingController _text1Controller = TextEditingController();
  TextEditingController _text2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: BackgroundWidget(
        imagePath: TextStrings.appAssetBackgroundColorPath,
        child: Container(
          margin: EdgeInsets.only(top: _size.height * 0.30),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(TextStrings.appAssetBackgroundPlainPath),
            fit: BoxFit.fill,
          )),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.grey,
                child: DropdownButton(
                  focusColor: Colors.indigo,
                  items: MenuItems().menuItems.map<DropdownMenuItem<String>>(
                      (Map<String, dynamic> value) {
                    return DropdownMenuItem<String>(
                      value: value["title"],
                      child: Text(
                        value["title"],
                        style: TextStyle(color: Colors.black),
                      ),
                    );
                  }).toList(),
                  value: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                      _text1Controller.text = _value;
                    });
                  },
                ),
              ),
              TextField(
                controller: _text1Controller,
              ),
              TextFormField(
                controller: _text2Controller,
                decoration: InputDecoration(hintText: "test msg"),
                validator: (data) {
                  int length = data.length;
                  if (length < 6) {
                    return "error max length is 6";
                  }
                  return null;
                },
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
    {"title": "clynder", "value": "cly"},
    {"title": "Petrol", "value": "ptr"},
  ];

  UnmodifiableListView<Map<String, dynamic>> get menuItems =>
      UnmodifiableListView(_menuItems);
}
