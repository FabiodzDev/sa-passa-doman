import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:sapassadomantter/widget/widgetcentroraccolta.dart';


class CentroDiRaccolta extends StatefulWidget {

  String id_comune;

  CentroDiRaccolta({@required this.id_comune});

  @override
  _CentroDiRaccoltaState createState() => _CentroDiRaccoltaState();
}

class _CentroDiRaccoltaState extends State<CentroDiRaccolta> {

  List<WidgetCentroDiRaccolta> listaCentriDiRaccolta = [];



  Future<void> recuperaCentroDiRaccolta(String id_comune) async {
    var urly = Uri.parse(
        "https://www.viviarcole.it/mysqljsonsapassadomacentrodiraccolta.php?comune=${widget.id_comune}"); // attenzione. Ho dovuto mettere https e non http..altrimenti non funzionava

    try {
      final response = await http.get(urly);

      print(json.decode(response.body));

      setState(() {
        listaCentriDiRaccolta = [];
      });
      final contattiEstratti = json.decode(response.body);

      contattiEstratti.forEach((datix) {
        listaCentriDiRaccolta.add(WidgetCentroDiRaccolta(
          indirizzo: datix['indirizzo'] ,
          orario: datix['orario'],
          note: datix['note'],
          immagine: datix['immagine'],

        ));



      });

      print(listaCentriDiRaccolta);
    } catch (error) {
      throw (error);
    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    recuperaCentroDiRaccolta(widget.id_comune);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CENTRO DI RACCOLTA"),
        centerTitle: true,

      ),
      body: SafeArea(
        child: Container(

          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [

              ...listaCentriDiRaccolta, // INCLUDO UNA LISTA DI WIDGET IN UN CHILDREN

            ],
          ),
        ),
      ),
    );
  }
}
