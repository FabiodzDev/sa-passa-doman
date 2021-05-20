import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:sapassadomantter/widget/widgetaltreinfo.dart';

class AltreInfo extends StatefulWidget {

  String id_comune;

  AltreInfo({@required this.id_comune});

  @override
  _AltreInfoState createState() => _AltreInfoState();
}

class _AltreInfoState extends State<AltreInfo> {

  List<WidgetAltreInfo> listaAltreInfo = [];


  Future<void> recuperaAltreInfo(String id_comune) async {
    var urly = Uri.parse(
        "https://www.viviarcole.it/mysqljsonsapassadomaaltreinfo.php?comune=${widget.id_comune}"); // attenzione. Ho dovuto mettere https e non http..altrimenti non funzionava

    try {
      final response = await http.get(urly);

      print(json.decode(response.body));

      setState(() {
        listaAltreInfo = [];
      });
      final infoEstratte = json.decode(response.body);

      infoEstratte.forEach((datix) {
        listaAltreInfo.add(WidgetAltreInfo(
          info: datix['informazione'] ,
        ));

      });

      print(listaAltreInfo);
    } catch (error) {
      throw (error);
    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    recuperaAltreInfo(widget.id_comune);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ALTRE INFO"),
        centerTitle: true,

      ),
      body: SafeArea(
        child: Container(

          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [

              ...listaAltreInfo, // INCLUDO UNA LISTA DI WIDGET IN UN CHILDREN

            ],
          ),
        ),
      ),
    );
  }
}
