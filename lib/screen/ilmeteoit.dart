import 'package:flutter/material.dart';
import 'package:sapassadomantter/screen/scrollinoiniziale.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert';


class Ilmeteoit extends StatefulWidget {

  String nomeComune;
  String idComune;
  String nomeComunePerIlMeteo;


  Ilmeteoit({@required this.nomeComune, @required this.idComune, @required this.nomeComunePerIlMeteo });

  @override
  _IlmeteoitState createState() => _IlmeteoitState();
}

class _IlmeteoitState extends State<Ilmeteoit> {


//  String meteo = "";

//  Future<void> recuperameteo(String id_comune) async {
//    var urly = Uri.parse(
//        "https://www.viviarcole.it/mysqljsonsapassadomailmeteoit.php?comune=${widget.idComune}"); // attenzione. Ho dovuto mettere https e non http..altrimenti non funzionava
//
//    try {
//      final response = await http.get(urly);
//
//      print(json.decode(response.body));
//
//      final infoDatiModalita = json.decode(response.body);
//
//      infoDatiModalita.forEach((datix) {
//
//        setState(() {
//          meteo = datix['ilmeteoit'];
//          print (meteo);
//
//        });
//
//      });
//
//
//    } catch (error) {
//      throw (error);
//    }
//  }




  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
//    recuperameteo(widget.idComune);


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("IL METEO  ${widget.nomeComune} "),
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
        initialUrl: "https://www.ilmeteo.it/meteo/${widget.nomeComunePerIlMeteo}",
      ),
    );
  }
}
