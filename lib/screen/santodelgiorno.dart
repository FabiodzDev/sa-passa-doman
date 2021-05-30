import 'package:flutter/material.dart';
import 'package:sapassadomantter/screen/scrollinoiniziale.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

import 'package:sapassadomantter/widget/widgetsantidelgiorno.dart';


class SantoDelGiorno extends StatefulWidget {
  @override
  _SantoDelGiornoState createState() => _SantoDelGiornoState();
}

class _SantoDelGiornoState extends State<SantoDelGiorno> {


  List<WidgetSantiDelGiorno> listaSantiDelGiorno = [];

  Future<void> recuperaSantoDelGiorno() async {
    var url = Uri.parse(
        "https://www.santodelgiorno.it/santi.json"); // attenzione. Ho dovuto mettere https e non http..altrimenti non funzionava

    try {
      final response = await http.get(url);

      // print(json.decode(response.body));   funziona

      setState(() {
        listaSantiDelGiorno = [];
      });
      final datiEstratti = json.decode(response.body);

      datiEstratti.forEach((dati) {
        listaSantiDelGiorno.add(WidgetSantiDelGiorno(
          nomex: dati['nome'],
          tipologiax: dati['tipologia'],
          datax: dati['data'],
          permalinkx: dati['permalink'],
          urlimmaginex: dati['urlimmagine'],
          descrizionex: dati['descrizione'],


        ));

        print(dati['nome']);
        print(dati['tipologia']);
        print(dati['descrizione']);

      });

      print(listaSantiDelGiorno);
    } catch (error) {
      throw (error);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();

    recuperaSantoDelGiorno();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("I SANTI DEL GIORNO"),
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
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .85,  // altezza massima = 85% della dimensione dello schermo
            child: ListView(
              children: [
                ...listaSantiDelGiorno, // INCLUDO UNA LISTA DI WIDGET IN UN CHILDREN
              ],
            ),

          )
        ],
      ),


    );
  }
}
