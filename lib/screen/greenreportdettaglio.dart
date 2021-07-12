import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

class GreenReportDettaglio extends StatefulWidget {

  String linkgreenreport;

  GreenReportDettaglio({@required this.linkgreenreport});

  @override
  _GreenReportDettaglioState createState() => _GreenReportDettaglioState();
}

class _GreenReportDettaglioState extends State<GreenReportDettaglio> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LEGGI L'ARTICOLO"),
        centerTitle: true,
      ),

      body: WebView(
        initialUrl: widget.linkgreenreport,
      ),
    );
  }
}
