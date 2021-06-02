import 'package:flutter/material.dart';
import 'package:sapassadomantter/screen/scrollinoiniziale.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert';


class StaseraInTv extends StatefulWidget {
  @override
  _StaseraInTvState createState() => _StaseraInTvState();
}

class _StaseraInTvState extends State<StaseraInTv> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SA VARDEMO STASERA ?"),
        brightness: Brightness.dark, // orologio e wifi bianchi

//        actions: [
//          IconButton(
//            icon: Icon(Icons.pages),
//            onPressed: () {
//
//              Navigator.pop(context);
//              Navigator.push(context, MaterialPageRoute(builder: (context) => ComplicatedImageDemo()));
//            },
//          )
//        ],
      ),

      body: WebView(
        initialUrl: "https://www.staseraintv.com/index.html",
      ),
    );  }
}




