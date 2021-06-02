import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:sapassadomantter/widget/widgeteventicomunielimitrofi.dart';


class EventiInComuneELimitrofi extends StatefulWidget {
  @override
  _EventiInComuneELimitrofiState createState() => _EventiInComuneELimitrofiState();
}

class _EventiInComuneELimitrofiState extends State<EventiInComuneELimitrofi> {

  List<WidgetEventiComunieLimitrofi> listaEventiComunieLimitrofi = [];

  Future<void> recuperaEventiComuneELimitrofi() async {
    var urly = Uri.parse(
        "https://www.viviarcole.it/mysqljsonsapassadomaeventicomunelimitrofi.php"); // attenzione. Ho dovuto mettere https e non http..altrimenti non funzionava

    try {
      final response = await http.get(urly);

      print(json.decode(response.body));

      setState(() {
        listaEventiComunieLimitrofi = [];
      });
      final contattiEstratti = json.decode(response.body);

      contattiEstratti.forEach((datix) {
        listaEventiComunieLimitrofi.add(WidgetEventiComunieLimitrofi(
          nomeEvento: datix['nomeevento_eventiarcoleelimitrofi'] ,
          luogoEvento: datix['luogoevento_eventiarcoleelimitrofi'],
          dataInizio: datix['datainizio_eventiarcoleelimitrofi'],
          dataFine: datix['datafine_eventiarcoleelimitrofi'],
          testoEvento: datix['testo_eventiarcoleelimitrofi'],
          urlImmagine: datix['urlimmagine_eventiarcoleelimitrofi'],
          linkEvento: datix['link_eventiarcoleelimitrofi'],


        ));



      });

      print(listaEventiComunieLimitrofi);
    } catch (error) {
      throw (error);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    recuperaEventiComuneELimitrofi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EVENTI NEL TUO COMUNE E LIMITROFI"),
        centerTitle: true,
        brightness: Brightness.dark, // orologio e wifi bianchi

      ),
      body: SafeArea(
        child: Container(

          padding: EdgeInsets.all(15),
          child: ListView(

            children: [

              ...listaEventiComunieLimitrofi, // INCLUDO UNA LISTA DI WIDGET IN UN CHILDREN

            ],
          ),
        ),
      ),
    );
  }
}
