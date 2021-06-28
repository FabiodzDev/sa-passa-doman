import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

class YoutubeDettaglio extends StatefulWidget {

  String linkVideo = " ";

  YoutubeDettaglio({@required this.linkVideo});

  @override
  _YoutubeDettaglioState createState() => _YoutubeDettaglioState();
}

class _YoutubeDettaglioState extends State<YoutubeDettaglio> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BUONA VISIONE"),
        centerTitle: true,
      ),

      body: WebView(
        initialUrl: widget.linkVideo,
      ),
    );
  }
}
