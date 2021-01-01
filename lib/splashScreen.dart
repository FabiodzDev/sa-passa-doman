import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'main.dart';



class Splash extends StatefulWidget {
  @override
  _SplashState createState() => new _SplashState();
}
Widget paginacorrente = MyHomePage();

class _SplashState extends State<Splash> {
  @override

  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 5,
        navigateAfterSeconds: paginacorrente,
        title: new Text(
          'BENVENUTO',
          style:
          new TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0, color: Colors.blue.shade800),
        ),
        image: new Image.asset('images/1024.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.blueAccent);
  }
}