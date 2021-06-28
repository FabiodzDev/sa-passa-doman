import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:sapassadomantter/widget/widgetvideoyoutube.dart';

class YoutubeVideoAgricoli extends StatefulWidget {
  @override
  _YoutubeVideoAgricoliState createState() => _YoutubeVideoAgricoliState();
}

class _YoutubeVideoAgricoliState extends State<YoutubeVideoAgricoli> {

  List<WidgetVideoYoutube> listaVideoYoutube = [];

  Future<void> recuperaVideoYoutube() async {
    var url = Uri.parse(
        "https://www.viviarcole.it/mysqljsonsapassadomayoutube.php"); // attenzione. Ho dovuto mettere https e non http..altrimenti non funzionava

    try {
      final response = await http.get(url);

      // print(json.decode(response.body));   funziona

      setState(() {
        listaVideoYoutube = [];
      });
      final datiEstratti = json.decode(response.body);

      datiEstratti.forEach((dati) {
        listaVideoYoutube.add(WidgetVideoYoutube(
          titoloVideo: dati['titolo_videoagricoli'],
          nomePagina: dati['nomepagina_videoagricoli'],
          linkVideo: dati['link_videoagricoli'],

        ));

        print(dati['azienda_offertespeciali']);
      });

      print(listaVideoYoutube);
    } catch (error) {
      throw (error);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    recuperaVideoYoutube();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VIDEO"),
        centerTitle: true,
        brightness: Brightness.dark, // orologio e wifi bianchi

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
              ),
              ...listaVideoYoutube, // INCLUDO UNA LISTA DI WIDGET IN UN CHILDREN
            ],
          ),
        ),
      ),
    );
  }
}
