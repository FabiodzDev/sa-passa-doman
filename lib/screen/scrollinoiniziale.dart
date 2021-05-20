

import 'dart:convert';
import 'dart:ffi';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sapassadomantter/screen/farmaciediturno.dart';
import 'package:sapassadomantter/screen/social.dart';
import 'package:sapassadomantter/screen/zonepage.dart';
import 'package:sapassadomantter/widget/calendario.dart';
import 'package:sapassadomantter/widget/widgetcomuni.dart';

import '../main.dart';
import '../sharedpreference.dart';
import 'chisiamo.dart';
import 'contatti.dart';
import 'elencocomuni.dart';

import 'package:http/http.dart' as http;


class ComplicatedImageDemo extends StatefulWidget {






  @override
  _ComplicatedImageDemoState createState() => _ComplicatedImageDemoState();
}

class _ComplicatedImageDemoState extends State<ComplicatedImageDemo> {

  String valoreComune = "999";
  String valoreZona = "999";
  String comuneRecuperato = " ";
  String zonaRecuperata = " ";
  String nomeComune = " ";
  String nomeZona = " ";
  String valoreColoreZona = " ";
  String valoreColoreTestoZona = " ";
  Color coloreDaPassare = Colors.white;
  Color coloreTestoDaPassare = Colors.black;
  List<Calendario> listaDati = [];


  // RECUPERIAMO IL COLORE SFONDO IN FORMATO #RRGGBB E LO CONVERTIAMO IN CLASSE COLOR
  Color convertiColoreSfondo(String code) {
    Color colore = Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);

    setState(() {
      coloreDaPassare = colore;
    });
    return colore;
  }

  // RECUPERIAMO IL COLORE TESTO IN FORMATO #RRGGBB E LO CONVERTIAMO IN CLASSE COLOR
  Color convertiColoreTesto(String code) {
    Color coloreText = Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);

    setState(() {
      coloreTestoDaPassare = coloreText;
    });
    return coloreText;
  }



// RECUPERIAMO IL FILE JSON E SALVIAMO I DATI NELLA LISTA

//  List<Calendario> listaDati = [];

  Future<void> recuperaValore(String id_comune, String id_zone) async {
    //const url = "http://www.sanoegustoso.com/mysqljsonsapassadoma.php";
    var url = Uri.parse(
        "https://www.viviarcole.it/mysqljsonsapassadomarifiutodoman.php?id=${id_comune}&zona=${id_zone}"); // attenzione. Ho dovuto mettere https e non http..altrimenti non funzionava

    try {
      final response = await http.get(url);

      setState(() {
        listaDati = [];
      });

      final datiEstratti = json.decode(response.body);

      datiEstratti.forEach((dati) {
        listaDati.add(Calendario(
          id: dati['id_spd_calendari'],
          nomeComune: dati['NomeComune'],
          nomeZona: dati['NomeZona'],
          data: dati['data'],
          nomeRifiuto: dati['NomeRifiuto'],
          immagineRifiuto: dati['immagino_rifiuto'],
        ));


        setState(() {
          comuneRecuperato = dati['NomeComune'];
          zonaRecuperata = dati['NomeZona'];
        });
      });

      //print(listaDati);
    } catch (error) {
      throw (error);
    }
  }

  // RECUPERIAMO LE SHARED PREFERENCE
  Future<Void> ricerca() async {

    SharedPreference sharedpref = SharedPreference();


    valoreComune = await sharedpref.recuperaComuneFunz();
    nomeComune = await sharedpref.recuperaNomeComuneFunz();

    valoreZona = await sharedpref.recuperaZonaFunz();
    nomeZona = await sharedpref.recuperaNomeZonaFunz();

    valoreColoreZona = await sharedpref.recuperaColoreZonaFunz();
    valoreColoreTestoZona = await sharedpref.recuperaColoreTestoZonaFunz();

// SE VALORE COMUNE E' NULLO MANDIAMO L'UTENTE A SELEZIONARE IL COMUNE, ESPLODENDO QUESTA PAGINA
    if (valoreComune == null) {

      Navigator.pop(context);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Comuni()));


    } else if (valoreZona == null){

      Navigator.pop(context);
      Navigator.push(context,  MaterialPageRoute(builder: (context) => ZonePage(id_comune: valoreComune, nome_comune: nomeComune )));

    } else {

      setState(() {
        valoreComune = valoreComune;
        nomeComune = nomeComune;
        nomeZona = nomeZona;
        valoreZona = valoreZona;
        valoreColoreZona = valoreColoreZona;
        valoreColoreTestoZona = valoreColoreTestoZona;
      });


      convertiColoreSfondo(valoreColoreZona);
      convertiColoreTesto(valoreColoreTestoZona);

      recuperaValore(valoreComune, valoreZona);

    }}


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ricerca();

  }
  @override
  Widget build(BuildContext context) {


    final Map imgList = {
      'https://viviarcole.it/aa_spd_immagini/ic_launcher-playstore.png' : [MyHomePage(valoreComune: valoreComune, valoreZona: valoreZona, comuneRecuperato: comuneRecuperato, zonaRecuperata: zonaRecuperata, nomeComune: nomeComune, nomeZona: nomeZona, valoreColoreZona: valoreColoreZona, valoreColoreTestoZona: valoreColoreTestoZona, coloreDaPassare: coloreDaPassare, coloreTestoDaPassare: coloreTestoDaPassare, listaDati: listaDati ), "  La gestione dei rifiuti"],
      'https://www.viviarcole.it/aa_spd_immagini/farmacia.png' : [Farmaciediturno(), "Le farmacie di turno"],
//      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80' : Social(),
//      'https://www.viviarcole.it/aa_spd_immagini/secco.png' : Social()
    };



    final List<Widget> imageSliders = imgList.entries.map((item) => Container(
      child: Container(
        margin: EdgeInsets.all(1.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: GestureDetector(
              onTap: ()  {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => item.value[0]));},
              child: Stack(
                children: <Widget>[
                  Image.network(item.key, fit: BoxFit.cover, width: 1000,),
                  Positioned(
                    bottom: -7,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(50, 0, 0, 0),
                            Color.fromARGB(0, 0, 0, 0)
                          ],
                          begin: Alignment.bottomRight,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          item.value[1],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
    )).toList();



    return Scaffold(
      appBar: AppBar(title: Text('SA PASSA DOMAN'), centerTitle: true,),
      body: Container(
        padding: EdgeInsets.only(top: 50),
          child: ListView(children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 1.6,
                enlargeCenterPage: true,
                reverse: false,
              ),
              items: imageSliders,
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Text(""),
            )
          ],
          )
      ),
    );
  }
}


class ListaOggetti {

  String percorsofoto;
  Object pagina;

  ListaOggetti({@required this.percorsofoto, @required this.pagina});

}









