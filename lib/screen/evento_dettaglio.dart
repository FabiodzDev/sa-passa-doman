import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DettaglioEvento extends StatefulWidget {
  String citta;
  String link;

  DettaglioEvento({@required this.citta, @required this.link});

  @override
  _DettaglioEventoState createState() => _DettaglioEventoState();
}

class _DettaglioEventoState extends State<DettaglioEvento> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.citta),
        centerTitle: true,
        backgroundColor: Colors.pink,
        brightness: Brightness.dark, // orologio e wifi bianchi
      ),
      body: SafeArea(
        child: WebView(
          initialUrl: widget.link,
        ),
      ),
    );
  }
}
