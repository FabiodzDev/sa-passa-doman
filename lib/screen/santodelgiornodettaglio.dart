import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert';


class SantoDelGiornoDettaglio extends StatefulWidget {

  String permalink;

  SantoDelGiornoDettaglio({@required this.permalink});

  @override
  _SantoDelGiornoDettaglioState createState() => _SantoDelGiornoDettaglioState();
}

class _SantoDelGiornoDettaglioState extends State<SantoDelGiornoDettaglio> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();

  }
  @override
  Widget build(BuildContext context) {
    print(widget.permalink);

    return Scaffold(
      appBar: AppBar(title: Text("Scorri la pagina"),
        centerTitle: true,
),

      body: WebView(
        initialUrl: widget.permalink,
      ),
    );
  }
}
