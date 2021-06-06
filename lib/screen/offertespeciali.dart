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
          urllogo: dati['urllogo_offertespeciali'],
        ));

        print(dati['azienda_offertespeciali']);
      });

      print(listaoffertespeciali);
    } catch (error) {
      throw (error);
    }
  }

  void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
              color: Color(0xff757575),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    )),
                child: ListView(
                  children: [
                    Center(
                        child: Text(
                      "PUBBLICA LA TUA OFFERTA",
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    )),
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Text(
                        "1 SOLA REGOLA: DEVE ESSERE VANTAGGIOSA PER TUTTI",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Colors.pink),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 12),
                      child: Text(
                        "Manda un'email a:",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Container(
                      child: Text(
                        "sapassadoman@gmail.com",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 18, color: Colors.pink),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 12),
                      child: Text(
                        "riepilogando i dettagli della tua offerta e aspetta poi la nostra risposta.",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 18),
                      ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                      children: [
                        Text(
                          "Includi i seguenti dati:",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "- La tua attività",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 18,),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "- Il paese in cui hai sede",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 18,),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "- L'intervallo di date della validità dell'offerta speciale",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 18,),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "- Il contenuto dell'offerta",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 18,),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "- Eventuale link per ulteriori informazioni",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 18,),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "- Il tuo numero di telefono per essere da noi contattato",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 18,),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Grazie.",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 18,),
                    ),
                    Text(
                      "Il Team di Sa Passa Doman",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 18,),
                    ),

//              Text(selezionata.toString())
                  ],
                ),
              ));
        });
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
      appBar: AppBar(
        title: Text("OFFERTE SPECIALI"),
        brightness: Brightness.dark, // orologio e wifi bianchi
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
              size: 35,
            ),
            onPressed: () => _onButtonPressed(),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 25,
                  left: 15,
                  right: 15,
                ),
                height: 70,
                color: Colors.white,
                child: Text(
                  "Clicca sulle card e scopri le offerte che ti aspettano nei rispettivi negozi.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
              ...listaoffertespeciali, // INCLUDO UNA LISTA DI WIDGET IN UN CHILDREN
            ],
          ),
        ),
      ),
    );
  }
}
