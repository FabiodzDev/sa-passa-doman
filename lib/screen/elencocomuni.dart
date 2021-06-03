import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:sapassadomantter/widget/widgetcomuni.dart';



class Comuni extends StatefulWidget {



  @override
  _ComuniState createState() => _ComuniState();
}

class _ComuniState extends State<Comuni> {

  List<WidgetComuni> listaComuni = [];


  Future<void> recuperaComuni() async {
    var url = Uri.parse(
        "https://www.viviarcole.it/mysqljsonsapassadomacomuni.php"); // attenzione. Ho dovuto mettere https e non http..altrimenti non funzionava

    try {
      final response = await http.get(url);

      // print(json.decode(response.body));   funziona

      setState(() {
        listaComuni = [];
      });
      final datiEstratti = json.decode(response.body);

      datiEstratti.forEach((dati) {
        listaComuni.add(WidgetComuni(
          id: dati['id_spd_comuni'],
          nome: dati['nome'],
          nomeIlMeteo: dati['ilmeteoit'],

        ));

        print(dati['id_spd_comuni']);
        print(dati['nome']);
        print(dati['ilmeteoit']);

      });

      print(listaComuni);
    } catch (error) {
      throw (error);
    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    recuperaComuni();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scegli il tuo COMUNE"),
        brightness: Brightness.dark, // orologio e wifi bianchi

      ),
      body: Column(
        children: [
          Container(
            height: 500,
            child: ListView(
              children: [
                ...listaComuni, // INCLUDO UNA LISTA DI WIDGET IN UN CHILDREN
              ],
            ),

          )
        ],
      ),
    );
  }
}
