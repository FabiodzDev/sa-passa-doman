import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:sapassadomantter/widget/widgetavvisi.dart';

class Avvisi extends StatefulWidget {
  @override
  _AvvisiState createState() => _AvvisiState();
}

class _AvvisiState extends State<Avvisi> {


  List<WidgetAvvisi> listaavvisi = [];

  Future<void> recuperaAvvisi() async {
    var url = Uri.parse(
        "https://www.viviarcole.it/mysqljsonsapassadomaavvisi.php"); // attenzione. Ho dovuto mettere https e non http..altrimenti non funzionava

    try {
      final response = await http.get(url);

      // print(json.decode(response.body));   funziona

      setState(() {
        listaavvisi = [];
      });
      final datiEstratti = json.decode(response.body);

      datiEstratti.forEach((dati) {
        listaavvisi.add(WidgetAvvisi(
          data: dati['data_avvisi'],
          testoavviso: dati['testo_avvisi'] ,
          datascadenzaavviso: dati['datascadenza_avvisi'] ,


        ));


      });

      print(listaavvisi);
    } catch (error) {
      throw (error);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    recuperaAvvisi();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AVVISI"),
        centerTitle: true,
        brightness: Brightness.dark, // orologio e wifi bianchi

      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          child: ListView(
            children: [
              ...listaavvisi,
            ],
          ),

        ),
      ),
    );
  }
}
