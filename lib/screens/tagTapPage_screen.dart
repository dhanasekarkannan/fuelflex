import 'package:flutter/material.dart';
import 'package:fuelflex/config/text_strings.dart';
import 'package:fuelflex/widgets/Background_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TagTapPageScreen extends StatefulWidget {
  static const routeName = TextStrings.appTagTapScreenPath;

  @override
  _TagTapPageScreenState createState() => _TagTapPageScreenState();
}

class _TagTapPageScreenState extends State<TagTapPageScreen> {
  
  void _navigateToSale() async{
    await Future.delayed(Duration(seconds: 3), (){
      Navigator.of(context).pushNamed(TextStrings.appSaleScreenPath);
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToSale();
  }
  

  
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: BackgroundWidget(
        imagePath: TextStrings.appAssetBackgroundPlainPath,
        child: Container(
          child: Center(
            child: SingleChildScrollView(
                          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: _size.height * 0.20,
                    width: _size.width * 0.50,
                    child: Image(
                      image: AssetImage(
                        TextStrings.appAssetOlaCardColorLogoPath,
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    height: _size.height * 0.50,
                    width: _size.width * 0.80,
                    child: SvgPicture.asset(
                      TextStrings.appAssetTapIconPath,
                      color: Colors.indigo[900],
                    ),
                  ),
                  Container(
                    child: Text(
                      TextStrings.tapText,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.indigo[900]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
