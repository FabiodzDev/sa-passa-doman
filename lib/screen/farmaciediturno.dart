import 'dart:io';
import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

class Farmaciediturno extends StatefulWidget {
  @override
  _FarmaciediturnoState createState() => _FarmaciediturnoState();
}

class _FarmaciediturnoState extends State<Farmaciediturno> {

  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'http://mobile.farmacieverona.it',
    );
  }
}
