import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'dart:convert';
import 'dart:ffi';

import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:sapassadomantter/screen/farmaciediturno.dart';
import 'package:sapassadomantter/screen/santodelgiorno.dart';
import 'package:sapassadomantter/screen/scrollinocondiverseforme.dart';
import 'package:sapassadomantter/screen/social.dart';
import 'package:sapassadomantter/screen/staseraintv.dart';
import 'package:sapassadomantter/screen/zonepage.dart';
import 'package:sapassadomantter/widget/calendario.dart';
import 'package:sapassadomantter/widget/widgetcomuni.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:sapassadomantter/widget/widgetluoghiepersone.dart';
import 'package:sapassadomantter/widget/widgetnumeroavvisi.dart';
import 'package:sapassadomantter/widget/widgetoffertespeciali.dart';

import '../main.dart';
import '../sharedpreference.dart';
import 'areaagricola.dart';
import 'avvisi.dart';
import 'chisiamo.dart';
import 'contatti.dart';
import 'elencocomuni.dart';

import 'package:http/http.dart' as http;

import 'eventi.dart';
import 'ilmeteoit.dart';
import 'offertespeciali.dart';

class ScrollinoDiverseForme extends StatefulWidget {
  @override
  _ScrollinoDiverseFormeState createState() => _ScrollinoDiverseFormeState();
}

class _ScrollinoDiverseFormeState extends State<ScrollinoDiverseForme> {
  String valoreComune = "999";
  String valoreZona = "999";
  String comuneRecuperato = " ";
  String zonaRecuperata = " ";
  String nomeComune = " ";
  String nomeZona = " ";
  String valoreColoreZona = " ";
  String valoreColoreTestoZona = " ";
  String nomeComuneIlMeteo = "";
  Color coloreDaPassare = Colors.white;
  Color coloreTestoDaPassare = Colors.black;
  List<Calendario> listaDati = [];

  // RECUPERIAMO IL COLORE SFONDO IN FORMATO #RRGGBB E LO CONVERTIAMO IN CLASSE COLOR
  Color convertiColoreSfondo(String code) {
    Color colore =
        Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);

    setState(() {
      coloreDaPassare = colore;
    });
    return colore;
  }

  // RECUPERIAMO IL COLORE TESTO IN FORMATO #RRGGBB E LO CONVERTIAMO IN CLASSE COLOR
  Color convertiColoreTesto(String code) {
    Color coloreText =
        Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);

    setState(() {
      coloreTestoDaPassare = coloreText;
    });
    return coloreText;
  }

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
    nomeComuneIlMeteo = await sharedpref.recuperaComunePerIlMeteo();

    valoreZona = await sharedpref.recuperaZonaFunz();
    nomeZona = await sharedpref.recuperaNomeZonaFunz();

    valoreColoreZona = await sharedpref.recuperaColoreZonaFunz();
    valoreColoreTestoZona = await sharedpref.recuperaColoreTestoZonaFunz();

// SE VALORE COMUNE E' NULLO MANDIAMO L'UTENTE A SELEZIONARE IL COMUNE, ESPLODENDO QUESTA PAGINA
    if (valoreComune == null) {
      Navigator.pop(context);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Comuni()));
    } else if (valoreZona == null) {
      Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  ZonePage(id_comune: valoreComune, nome_comune: nomeComune)));
    } else {
      setState(() {
        valoreComune = valoreComune;
        nomeComune = nomeComune;
        nomeZona = nomeZona;
        nomeComuneIlMeteo = nomeComuneIlMeteo;
        valoreZona = valoreZona;
        valoreColoreZona = valoreColoreZona;
        valoreColoreTestoZona = valoreColoreTestoZona;
      });

      convertiColoreSfondo(valoreColoreZona);
      convertiColoreTesto(valoreColoreTestoZona);

      recuperaValore(valoreComune, valoreZona);
    }
  }

  List<WidgetLuoghiePersone> listaLuoghiePersone = [];

  Future<void> recuperaluoghiepersone() async {
    var urly = Uri.parse(
        "https://www.viviarcole.it/mysqljsonsapassadomafotoeluoghi.php"); // attenzione. Ho dovuto mettere https e non http..altrimenti non funzionava

    try {
      final response = await http.get(urly);

      // print(json.decode(response.body));   funziona

      setState(() {
        listaLuoghiePersone = [];
      });
      final datiEstratti = json.decode(response.body);

      datiEstratti.forEach((dati) {
        listaLuoghiePersone.add(WidgetLuoghiePersone(
          titolox: dati['titolo_spd_genteeluoghi'],
          urlimmagine: dati['foto_spd_genteeluoghi'],
          descrizione1luoghiepersone: dati['descrizione1_spd_genteeluoghi'],
          descrizione2luoghiepersone: dati['descrizione2_spd_genteeluoghi'],
        ));

        print(dati['titolo_spd_genteeluoghi']);
        print(dati['foto_spd_genteeluoghi']);
      });

      print(listaLuoghiePersone);
    } catch (error) {
      throw (error);
    }
  }

  List<WidgetNumeroAvvisi> numeroavvisi = [];

  Future<void> recuperanumeroavvisi() async {
    var url = Uri.parse(
        "https://www.viviarcole.it/mysqljsonsapassadomanumeroavvisi.php"); // attenzione. Ho dovuto mettere https e non http..altrimenti non funzionava

    try {
      final response = await http.get(url);

      print(json.decode(response.body));

      setState(() {
        numeroavvisi = [];
      });
      final datiEstratti = json.decode(response.body);

      datiEstratti.forEach((dati) {
        numeroavvisi.add(WidgetNumeroAvvisi(
          numeroavvisi: dati['numerorighe'],
        ));

        //print(dati['numerorighe']);
      });

      // print(numeroavvisi);
    } catch (error) {
      throw (error);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ricerca();
    recuperaluoghiepersone();
    recuperanumeroavvisi();
  }

  @override
  Widget build(BuildContext context) {
    List<StaggeredTile> _staggeredTiles = <StaggeredTile>[
      StaggeredTile.count(2, 2),
      StaggeredTile.count(2, 1),
      StaggeredTile.count(1, 2),
      StaggeredTile.count(1, 1),
      StaggeredTile.count(2, 2),
      StaggeredTile.count(1, 2),
      StaggeredTile.count(1, 1),
      StaggeredTile.count(2, 1),
      StaggeredTile.count(2, 2),
      StaggeredTile.count(1, 1),
      StaggeredTile.count(1, 1),
    ];

    List<Widget> _tiles = <Widget>[
      Container(
        child: Card(
          color: Colors.white,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Comuni()));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Il tuo comune:",
                  style: TextStyle(color: Colors.blue.shade900),
                ),
                Text(
                  nomeComune,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Colors.blue.shade900),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "La tua zona:",
                  style: TextStyle(color: Colors.blue.shade900),
                ),
                Text(
                  nomeZona,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Colors.blue.shade900),
                ),
              ],
            ),
          ),
        ),
      ),

      SoloIcona(
        backgroundColor: Colors.lightBlue,
        iconData: MaterialCommunityIcons.weather_partly_cloudy,
        coloreIcona: Colors.white,
        dimensioneIcona: 60,
        destinazione: Ilmeteoit(
          nomeComune: nomeComune,
          idComune: valoreComune,
          nomeComunePerIlMeteo: nomeComuneIlMeteo,
        ),
      ),

      Container(
        child: Card(
          color: Colors.greenAccent,
          child: InkWell(
            onTap: () {
              //Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Farmaciediturno()));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RotatedBox(
                    quarterTurns: -1,
                    child: Text(
                      "FARMACIE H24",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),

//                Transform.rotate(
//                  child: Text(
//                      'FARMACIE H24',
//                      style: TextStyle(color: Colors.teal, fontSize: 20)
//                  ),
//                  angle: 90,
//                ),
              ],
            ),
          ),
        ),
      ),

//      TestoEIcona(
//        backgroundColor: Colors.lightBlue,
//        iconData: Icons.wifi,
//        coloreIcona: Colors.white,
//        testo: "FARMACIE H24",
//        altezzaTesto: 15,
//      ),

      SoloIcona(
        backgroundColor: Colors.amber,
        iconData: MaterialCommunityIcons.television_box,
        coloreIcona: Colors.white,
        dimensioneIcona: 50,
        destinazione: StaseraInTv(),
      ),

      SoloTesto(
        backgroundColor: Colors.green,
        testo: "SA PASSA DOMAN",
        altezzaTesto: 25,
        coloreTesto: Colors.white,
        destinazione: MyHomePage(
            valoreComune: valoreComune,
            valoreZona: valoreZona,
            comuneRecuperato: comuneRecuperato,
            zonaRecuperata: zonaRecuperata,
            nomeComune: nomeComune,
            nomeZona: nomeZona,
            valoreColoreZona: valoreColoreZona,
            valoreColoreTestoZona: valoreColoreTestoZona,
            coloreDaPassare: coloreDaPassare,
            coloreTestoDaPassare: coloreTestoDaPassare,
            listaDati: listaDati),
      ),
      TestoEIcona(
        backgroundColor: Colors.deepOrange,
        iconData: SimpleLineIcons.event,
        coloreIcona: Colors.white,
        altezzaIcona: 40,
        testo: "EVENTI",
        coloretesto: Colors.white,
        altezzaTesto: 15,
        destinazione: Eventi(),
      ),

      SoloIcona(
        backgroundColor: Colors.indigo,
        iconData: MaterialIcons.person_pin,
        coloreIcona: Colors.white,
        dimensioneIcona: 50,
        destinazione: SantoDelGiorno(),
      ),

      Container(
        child: Card(
          color: Colors.blue.shade900,
          child: InkWell(
            onTap: () {
              // Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OfferteSpeciali()));
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(width: 20.0, height: 100.0),
                const Text(
                  'SUPER',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                const SizedBox(width: 20.0, height: 100.0),
                DefaultTextStyle(
                  style: const TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Horizon',
                      color: Colors.red,
                      fontWeight: FontWeight.w700),
                  child: AnimatedTextKit(animatedTexts: [
                    RotateAnimatedText('SCONTI'),
                    RotateAnimatedText('OFFERTE'),
                    RotateAnimatedText('PREZZI'),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),

      Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height * .30,
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.2,
            enlargeCenterPage: true,
            reverse: true,
          ),
          items: listaLuoghiePersone,
        ),
      ),

      Container(
        child: Card(
          color: Colors.pink,
          child: InkWell(
            onTap: () {
              // Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Avvisi()));
            },
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 5),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    child: Column(
                      children: [
                        ...numeroavvisi,
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),

//      SoloIcona(
//        backgroundColor: Colors.lightBlueAccent,
//        iconData: MaterialCommunityIcons.tractor,
//        coloreIcona: Colors.white,
//        dimensioneIcona: 50,
//        destinazione: StaseraInTv(),
//      ),

      Card(
        color: Colors.lightBlueAccent,
        child: InkWell(
          onTap: () {
            // Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AreaAgrigola()));
          },
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Icon(
                        MaterialCommunityIcons.calendar_blank,
                        color: Colors.white,
                        size: 70,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, right: 20 ),
                      child: Icon(
                        MaterialCommunityIcons.tractor,
                        color: Colors.blue.shade900,
                        size: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ]
          ),
        ),
      ),

//      TestoEIcona(
//        backgroundColor: Colors.purple,
//        iconData: Icons.desktop_windows,
//        coloreIcona: Colors.white,
//        testo: " ",
//        altezzaTesto: 15,
//      ),
      // Example01Tile(backgroundColor: Colors.blue, iconData: Icons.radio, testo: " ",altezzaTesto: 15,),
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Text('SA PASSA DOMAN'),
          centerTitle: true,
          brightness: Brightness.dark, // orologio e wifi bianchi

//          actions: [
//            IconButton(
//              icon: Icon(Icons.home),
//              onPressed: () {
//                Navigator.pop(context);
//                Navigator.push(
//                    context, MaterialPageRoute(builder: (context) => ScrollinoDiverseForme()));
//              },
//            ),
//          ],
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: StaggeredGridView.count(
              crossAxisCount: 4,
              staggeredTiles: _staggeredTiles,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              padding: const EdgeInsets.all(4),
              children: _tiles,
            )));
  }
}

class TestoEIcona extends StatelessWidget {
  Color backgroundColor;
  IconData iconData;
  Color coloreIcona;
  double altezzaIcona;
  double altezzaTesto;
  String testo;
  Color coloretesto;
  Widget destinazione;

  TestoEIcona(
      {@required this.backgroundColor,
      @required this.iconData,
      @required this.coloreIcona,
      @required this.altezzaIcona,
      @required this.testo,
      @required this.coloretesto,
      @required this.altezzaTesto,
      @required this.destinazione});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: InkWell(
        onTap: () {
          // Navigator.pop(context);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => destinazione));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Icon(
                  iconData,
                  size: altezzaIcona,
                  color: coloreIcona,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              testo,
              style: TextStyle(fontSize: altezzaTesto, color: coloretesto),
            ),
          ],
        ),
      ),
    );
  }
}

class SoloIcona extends StatelessWidget {
  Color backgroundColor;
  IconData iconData;
  double dimensioneIcona;
  Color coloreIcona;
  Widget destinazione;

  SoloIcona(
      {@required this.backgroundColor,
      @required this.iconData,
      @required this.dimensioneIcona,
      @required this.coloreIcona,
      @required this.destinazione});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: InkWell(
        onTap: () {
          // Navigator.pop(context);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => destinazione));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Icon(
                  iconData,
                  color: coloreIcona,
                  size: dimensioneIcona,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SoloTesto extends StatelessWidget {
  Color backgroundColor;
  double altezzaTesto;
  String testo;
  Color coloreTesto;
  Widget destinazione;

  SoloTesto(
      {@required this.backgroundColor,
      this.altezzaTesto,
      this.testo,
      this.coloreTesto,
      this.destinazione});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: InkWell(
        onTap: () {
          // Navigator.pop(context);
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => destinazione));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Text(
              testo,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: altezzaTesto,
                  color: coloreTesto,
                  fontWeight: FontWeight.w700),
            )),
          ],
        ),
      ),
    );
  }
}
