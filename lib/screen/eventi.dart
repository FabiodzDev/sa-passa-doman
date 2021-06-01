import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:sapassadomantter/widget/widgeteventi.dart';



class Eventi extends StatefulWidget {
  @override
  _EventiState createState() => _EventiState();
}

class _EventiState extends State<Eventi> {

  List<WidgetEventi> listaEventi = [];

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
          link: dati['link_eventiinzona'],
          urlimmagine: dati['urlimmagine_eventiinzona'],

        ));

        print(dati['citta_eventiinzona']);
        print(dati['link_eventiinzona']);
        print(dati['urlimmagine_eventiinzona']);
      });

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
                    'https://images.pexels.com/photos/443356/pexels-photo-443356.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
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

