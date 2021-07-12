import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
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
                          "PUBBLICA UN EVENTO",
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Text(
                        "HAI ORGANIZZATO UN EVENTO? FACCELO SAPERE!",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Colors.blue),
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
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 12),
                      child: Text(
                        "riepilogando i dettagli dell'evento e aspetta poi la nostra risposta.",
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
                          "- Il nome dell'evento.",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 18,),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "- Il luogo in cui si terrà.",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 18,),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "- Una foto, una loncadina o altro.",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 18,),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "- L'intervallo di date in cui svolgerà.",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 18,),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "- Di cosa si tratta.",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 18,),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "- Eventuale link per ulteriori informazioni.",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 18,),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "- Il tuo nome e numero di telefono per essere da noi contattato.",
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
    recuperaCittaEventi();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => _onButtonPressed(),

          child: const Icon(Icons.add),
          backgroundColor: Colors.amber.shade600,
        ),

        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              brightness: Brightness.dark, // orologio e wifi bianchi

              leading: IconButton(
                  icon: Icon(MaterialCommunityIcons.chevron_left, size: 40,),
                  onPressed: () {
                    Navigator.pop(context);
                  }
              ),
              expandedHeight: 220.0,
              floating: true,
              pinned: true,
              snap: true,
              elevation: 50,
              backgroundColor: Colors.blue,
              flexibleSpace: FlexibleSpaceBar(

                  centerTitle: true,
                  title: Text('EVENTI IN ZONA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
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

