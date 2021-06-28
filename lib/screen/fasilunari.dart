import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:sapassadomantter/widget/widgetfasilunari.dart';



class FasiLunari extends StatefulWidget {
  @override
  _FasiLunariState createState() => _FasiLunariState();
}

class _FasiLunariState extends State<FasiLunari> {

  List<WidgetFasiLunari> listaFasiLunari = [];


  Future<void> recuperaFasiLunari() async {
    var url = Uri.parse(
        "https://www.viviarcole.it/mysqljsonsapassadomafasilunari.php"); // attenzione. Ho dovuto mettere https e non http..altrimenti non funzionava

    try {
      final response = await http.get(url);

      // print(json.decode(response.body));   funziona

      setState(() {
        listaFasiLunari = [];
      });
      final datiEstratti = json.decode(response.body);

      datiEstratti.forEach((dati) {
        listaFasiLunari.add(WidgetFasiLunari(
          data: dati['data_calendario_luna'],
          ora: dati['orario_calendario_luna'],
          nome: dati['nome_spd_luna'],
        ));

       // print(dati['nome_spd_luna']);
      });

      print(listaFasiLunari);
    } catch (error) {
      throw (error);
    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    recuperaFasiLunari();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Center(
          child: Container(
            child: ListView(
              children: [
                Center(child: Text('FASI LUNARI', style: TextStyle(fontSize: 25), )),
                SizedBox(height: 10,),
                ...listaFasiLunari,
              ],
            ),

          ),
        ),
      ),
    );
  }
}
