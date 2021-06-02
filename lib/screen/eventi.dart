import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:sapassadomantter/widget/widgeteventi.dart';

import 'eventiincomuneelimitrofi.dart';



class Eventi extends StatefulWidget {
  @override
  _EventiState createState() => _EventiState();
}

class _EventiState extends State<Eventi> {

  List<Widget> listaEventi = [];

  Future<void> recuperaCittaEventi() async {
    var url = Uri.parse(
        "https://www.viviarcole.it/mysqljsonsapassadomaeventi.php"); // attenzione. Ho dovuto mettere https e non http..altrimenti non funzionava

    try {
      final response = await http.get(url);

      // print(json.decode(response.body));   funziona

      setState(() {
        listaEventi = [];
      });
      final datiEstratti = json.decode(response.body);

      datiEstratti.forEach((dati) {
        listaEventi.add(WidgetEventi(
          citta: dati['citta_eventiinzona'],
          descrizionecitta: dati['descrizione_eventiinzona'],
          link: dati['link_eventiinzona'],
          urlimmagine: dati['urlimmagine_eventiinzona'],

        ));


        print(dati['citta_eventiinzona']);
        print(dati['link_eventiinzona']);
        print(dati['urlimmagine_eventiinzona']);
      });

      listaEventi.insert(0, Row(
        children: [
          GestureDetector(
            onTap: () {

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EventiInComuneELimitrofi(),
                  ));

            },
            child: Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://www.viviarcole.it/aa_spd_immagini/fotoluoghiepersone/napoleon.jpg"),
                          fit: BoxFit.cover),
                      color: Colors.pink,
                      border: Border.all(

                        //color: Colors.pink[800], // Set border color
                          width: 0.0), // Set border width
                      borderRadius: BorderRadius.all(
                          Radius.circular(10.0)), // Set rounded corner radius
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: Text(
                              "VICINO A TE",
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 22),
                            )),
                        Container(
                            child: Text(
                              "Nel tuo comune o limitrofi",
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 13),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],

      ));



      print(listaEventi);
    } catch (error) {
      throw (error);
    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    recuperaCittaEventi();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              brightness: Brightness.dark, // orologio e wifi bianchi

              leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  }
              ),
              expandedHeight: 220.0,
              floating: true,
              pinned: true,
              snap: true,
              elevation: 50,
              backgroundColor: Colors.pink,
              flexibleSpace: FlexibleSpaceBar(

                  centerTitle: true,
                  title: Text('EVENTI IN ZONA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.network(
                    'https://www.viviarcole.it/aa_spd_immagini/fotoluoghiepersone/veronacopertina.jpg',
                    fit: BoxFit.cover,
                  )
              ),
            ),
            new SliverList(
                delegate: new SliverChildListDelegate(listaEventi)
            ),
          ],
        ),
      ),
    );
  }
}

