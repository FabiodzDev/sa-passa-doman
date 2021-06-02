import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:sapassadomantter/widget/widgetcontatti.dart';



class Contatti extends StatefulWidget {

  String id_comune;

  Contatti({@required this.id_comune});

  @override
  _ContattiState createState() => _ContattiState();
}

class _ContattiState extends State<Contatti> {

  List<WidgetContatti> listaContatti = [];


  Future<void> recuperaContatti(String id_comune) async {
    var urly = Uri.parse(
        "https://www.viviarcole.it/mysqljsonsapassadomacontatti.php?comune=${widget.id_comune}"); // attenzione. Ho dovuto mettere https e non http..altrimenti non funzionava

    try {
      final response = await http.get(urly);

      print(json.decode(response.body));

      setState(() {
        listaContatti = [];
      });
      final contattiEstratti = json.decode(response.body);

      contattiEstratti.forEach((datix) {
        listaContatti.add(WidgetContatti(
          primadescrizione: datix['prima_descrizione'] ,
          secondadescrizione: datix['seconda_descrizione'],
          numerotelefono: datix['numero_telefono'],

        ));



      });

      print(listaContatti);
    } catch (error) {
      throw (error);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    recuperaContatti(widget.id_comune);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NUMERI UTILI"),
        brightness: Brightness.dark, // orologio e wifi bianchi

      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/manph.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,

            children: [

              ...listaContatti, // INCLUDO UNA LISTA DI WIDGET IN UN CHILDREN

            ],
          ),
        ),
      ),
    );
  }
}
