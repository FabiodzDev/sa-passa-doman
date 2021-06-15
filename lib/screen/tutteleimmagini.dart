import 'package:flutter/material.dart';
import 'package:sapassadomantter/widget/widgetluoghiepersone.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:sapassadomantter/widget/widgettutteleimmagini.dart';



class TutteLeImmagini extends StatefulWidget {
  @override
  _TutteLeImmaginiState createState() => _TutteLeImmaginiState();
}

class _TutteLeImmaginiState extends State<TutteLeImmagini> {

  List<WidgetTutteLeImmagini> listaLuoghiePersone = [];

  Future<void> recuperaluoghiepersone() async {
    var urly = Uri.parse(
        "https://www.viviarcole.it/mysqljsonsapassadomafotoeluoghi.php"); // attenzione. Ho dovuto mettere https e non http..altrimenti non funzionava

    try {
      final response = await http.get(urly);

      // print(json.decode(response.body));   funziona

      setState(() {
        listaLuoghiePersone = [];
      });
      final datiEstratti = json.decode(response.body);

      datiEstratti.forEach((dati) {
        listaLuoghiePersone.add(WidgetTutteLeImmagini(
          titolox: dati['titolo_spd_genteeluoghi'],
          urlimmagine: dati['foto_spd_genteeluoghi'],
          descrizione1luoghiepersone: dati['descrizione1_spd_genteeluoghi'],
          descrizione2luoghiepersone: dati['descrizione2_spd_genteeluoghi'],
        ));

        print(dati['titolo_spd_genteeluoghi']);
        print(dati['foto_spd_genteeluoghi']);
      });

      print(listaLuoghiePersone);
    } catch (error) {
      throw (error);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    recuperaluoghiepersone();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TUTTE LE FOTO"),
        centerTitle: true,
        brightness: Brightness.dark, // orologio e wifi bianchi


      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 15),
          child: ListView(
            children: [
              ...listaLuoghiePersone,
            ],
          )
        ),
      ),
    );
  }
}
