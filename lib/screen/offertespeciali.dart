import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:sapassadomantter/widget/widgetoffertespeciali.dart';


class OfferteSpeciali extends StatefulWidget {
  @override
  _OfferteSpecialiState createState() => _OfferteSpecialiState();
}

class _OfferteSpecialiState extends State<OfferteSpeciali> {

  List<WidgetOfferteSpeciali> listaoffertespeciali = [];

  Future<void> recuperaOfferteSpeciali() async {
    var url = Uri.parse(
        "https://www.viviarcole.it/mysqljsonsapassadomaoffertespeciali.php"); // attenzione. Ho dovuto mettere https e non http..altrimenti non funzionava

    try {
      final response = await http.get(url);

      // print(json.decode(response.body));   funziona

      setState(() {
        listaoffertespeciali = [];
      });
      final datiEstratti = json.decode(response.body);

      datiEstratti.forEach((dati) {
        listaoffertespeciali.add(WidgetOfferteSpeciali(
          nomeazienda: dati['azienda_offertespeciali'],
          luogoazienda: dati['luogo_offertespeciali'],
          datainizioofferta: dati['inizio_offertespeciali'],
          datafineofferta: dati['fine_offertespeciali'],
          testoofferta: dati['testo1_offertespeciali'],
          parolamagica: dati['parolamagica_offertespeciali'],
          link: dati['link_offertespeciali'],
          urllogo: dati['urllogo_offertespeciali'] ,

        ));

        print(dati['azienda_offertespeciali']);
      });


      print(listaoffertespeciali);

    } catch (error) {
      throw (error);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    recuperaOfferteSpeciali();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("OFFERTE SPECIALI"),
        brightness: Brightness.dark, // orologio e wifi bianchi

      ),
      body: SafeArea(
        child:
            Container(
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 25, left: 15, right: 15, ),
                    height: 70,
                    color: Colors.white,
                    child: Text("Clicca sulle card e scopri le offerte che ti aspettano nei rispettivi negozi.", textAlign: TextAlign.justify ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                  ),
                  ...listaoffertespeciali, // INCLUDO UNA LISTA DI WIDGET IN UN CHILDREN
                ],
              ),


        ),
      ),
    );
  }
}
