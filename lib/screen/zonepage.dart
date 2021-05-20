import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:sapassadomantter/widget/widgetviepiazze.dart';
import 'dart:convert';

import 'package:sapassadomantter/widget/widgetzone.dart';



class ZonePage extends StatefulWidget {

  String id_comune;
  String nome_comune;


  ZonePage({@required this.id_comune, @required this.nome_comune });
  @override
  _ZonePageState createState() => _ZonePageState();
}

class _ZonePageState extends State<ZonePage> {

  List<WidgetZone> listaZonePerIlComuneScelto = [];
  List<WidgetViePiazze> listaViePerIlComuneScelto = [];



  Future<void> recuperaValoreZona(String id_comune) async {
    //const url = "http://www.sanoegustoso.com/mysqljsonsapassadoma.php";
    var url = Uri.parse(
        "https://www.viviarcole.it/mysqljsonsapassadomazone.php?id_comune=${id_comune}"); // attenzione. Ho dovuto mettere https e non http..altrimenti non funzionava

    try {
      final response = await http.get(url);

      // print(json.decode(response.body));   funziona

      setState(() {
        listaZonePerIlComuneScelto = [];
      });
      final datiEstratti = json.decode(response.body);

      datiEstratti.forEach((dati) {
        listaZonePerIlComuneScelto.add(WidgetZone(
          id: dati['id_spd_zone'],
          nome: dati['nome'],
          nomeComune: widget.nome_comune,
          coloreSfondo: dati['coloresfondo'],
          coloreTesto: dati['coloretesto'],
        ));

        print(dati['id_spd_zone']);
        //print(dati['nome']);

      });

      print(listaZonePerIlComuneScelto);
    } catch (error) {
      throw (error);
    }
  }

  Future<void> recuperaViePiazze(String id_comune) async {
    var urly = Uri.parse(
        "https://www.viviarcole.it/mysqljsonsapassadomavieepiazze.php?comune=${id_comune}"); // attenzione. Ho dovuto mettere https e non http..altrimenti non funzionava

    try {
      final response = await http.get(urly);

      print(json.decode(response.body));

      setState(() {
        listaViePerIlComuneScelto = [];
      });
      final datiEstrattiViePiazze = json.decode(response.body);

      datiEstrattiViePiazze.forEach((datix) {
        listaViePerIlComuneScelto.add(WidgetViePiazze(
          nomeVia: datix['nomevie'] ,
          nomeZona: datix['nomezona'],
        ));



      });

      print(listaViePerIlComuneScelto);
    } catch (error) {
      throw (error);
    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    recuperaValoreZona(widget.id_comune);
    recuperaViePiazze(widget.id_comune);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.nome_comune),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Text("SCEGLI LA ZONA", style: TextStyle(fontSize: 18, color: Colors.black,), textAlign: TextAlign.center,),
          Container(
            height: 300,

            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...listaZonePerIlComuneScelto, // INCLUDO UNA LISTA DI WIDGET IN UN CHILDREN
                ],

              ),

            ),

          ),
          Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 20,
          ),
          Text("LE VIE E LE PIAZZE e la ZONA", style: TextStyle(fontSize: 18, color: Colors.black,), textAlign: TextAlign.center,),

          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    ...listaViePerIlComuneScelto, // INCLUDO UNA LISTA DI WIDGET IN UN CHILDREN
                  ],

                ),

              ),
            ),

          )
        ],
      ),
    );
  }
}


