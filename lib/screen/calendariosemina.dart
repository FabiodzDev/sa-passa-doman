import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:sapassadomantter/widget/widgetcalendarioorto.dart';

import 'fasilunari.dart';

class CalendarioSemina extends StatefulWidget {
  @override
  _CalendarioSeminaState createState() => _CalendarioSeminaState();
}

class _CalendarioSeminaState extends State<CalendarioSemina> {

  List<WidgetCalendarioOrto> listaCalendarioOrto = [];


  Future<void> recuperaCalendarioSemina() async {
    var url = Uri.parse(
        "https://www.viviarcole.it/mysqljsonsapassadomacalendariosemina.php"); // attenzione. Ho dovuto mettere https e non http..altrimenti non funzionava

    try {
      final response = await http.get(url);

      // print(json.decode(response.body));   funziona

      setState(() {
        listaCalendarioOrto = [];
      });
      final datiEstratti = json.decode(response.body);

      datiEstratti.forEach((dati) {
        listaCalendarioOrto.add(WidgetCalendarioOrto(
          mese_semina: dati['nome_mese_semina'],
          tipo_semina: dati['nome_tipo_semina'],
          luna: dati['nome_spd_luna'],
          cosa_seminaree: dati['cosa_seminare'],
        ));

        // print(dati['nome_spd_luna']);
      });

      print(listaCalendarioOrto);
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
                child: FasiLunari(),
              ));
        });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    recuperaCalendarioSemina();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CALENDARIO SEMINA"),
        centerTitle: true,
        brightness: Brightness.dark, // orologio e wifi bianchi
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _onButtonPressed(),

        child: const Icon(FontAwesome5.moon),
        backgroundColor: Colors.amber.shade600,
      ),
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              ...listaCalendarioOrto,
            ],
          ),
        ),
      ),

    );
  }
}
