import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'main.dart';



class Splash extends StatefulWidget {
  @override
  _SplashState createState() => new _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 4,
        navigateAfterSeconds: MyHomePage(),
        title: new Text(
          'ARCOLE',
          style:
          new TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
        ),
        image: new Image.asset('images/logo.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.blueAccent);
  }
}