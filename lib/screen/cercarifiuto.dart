import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:sapassadomantter/widget/widgetelencorifiuti.dart';



class CercaRifiuto extends StatefulWidget {
  @override
  _CercaRifiutoState createState() => _CercaRifiutoState();
}

class _CercaRifiutoState extends State<CercaRifiuto> {

  List<WidgetElencoRifiuti> listaRifiuti = [];
  String parolaScritta = "";

  Future<void> recuperaElencoRifiuti() async {
    var url = Uri.parse(
        "https://www.viviarcole.it/mysqlsapassadomanelencorifiuti.php"); // attenzione. Ho dovuto mettere https e non http..altrimenti non funzionava

    try {
      final response = await http.get(url);

      // print(json.decode(response.body));   funziona

      setState(() {
        listaRifiuti = [];
      });

      final datiEstratti = json.decode(response.body);

      datiEstratti.forEach((dati) {
        listaRifiuti.add(WidgetElencoRifiuti(
          nome_rifiutox: dati['nome_rifiuto'],
          destinazione_rifiutox: dati['nome'],

        ));


      });

      print(listaRifiuti);
    } catch (error) {
      throw (error);
    }
  }

  Widget mostraTuttiRifiuti(String testoDaCercare) {

    List<Widget> elenco = List<Widget>();

    for (var i = 0; i < listaRifiuti.length; i++) {  // 05/01/2021 Sotto ho tolto la possibilità di vedere l'icona. Faccio più pulito
      IconData icona = Icons.add;
      Color coloreIcona = Colors.blue[200];


      if (testoDaCercare == null) { testoDaCercare = "";}  // La prima volta che avvio l'app è vuoto
      testoDaCercare = testoDaCercare.toLowerCase();      // il valore che scrive l'utente lo rendo tutto minuscolo
      String rifiutiDaCercare = listaRifiuti[i].nome_rifiutox.toLowerCase();  // la stringa che ricevo dall'elenco rifiuti la rendo tutta minuscola, cosi da poter fare la comparazione con il dato passato dall'utente

      if (rifiutiDaCercare.contains(testoDaCercare)) {    //  se la stringa scritta dall'utende è contenuta in una stringa presente nell'elenco, mostro il dato
        elenco.add(
          Container(
            child: ListTile(
              // leading: Icon(
              //icona,
              // size: 30,
              // color: coloreIcona,
              // ),
              title: Text(
                listaRifiuti[i].nome_rifiutox,
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text(
                listaRifiuti[i].destinazione_rifiutox,
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        );
      }
    }

    return Column(children: elenco);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    recuperaElencoRifiuti();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dove va il rifiuto?",style: TextStyle(color: Colors.black), ), backgroundColor: Colors.amber,),
      body: ListView(
        children: [
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Scrivi il rifiuto',
                labelText: 'Casella di ricerca',
                border: const OutlineInputBorder(),
              ),
              onChanged: (parolaDaCercare) {
                print(parolaDaCercare);
                setState(() {
                  parolaScritta = parolaDaCercare;
                });
              },
            ),
          ),
          mostraTuttiRifiuti(parolaScritta),

//          Container(
//            height: 400,
//            child: ListView(
//              children: [
//                ...listaRifiuti, // INCLUDO UNA LISTA DI WIDGET IN UN CHILDREN
//              ],
//            ),
//
//          )
        ],
      ),

    );
  }
}
