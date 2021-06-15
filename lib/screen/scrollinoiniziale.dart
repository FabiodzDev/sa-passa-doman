import 'dart:convert';
import 'dart:ffi';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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
import 'avvisi.dart';
import 'chisiamo.dart';
import 'contatti.dart';
import 'elencocomuni.dart';

import 'package:http/http.dart' as http;

import 'eventi.dart';
import 'ilmeteoit.dart';
import 'offertespeciali.dart';

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
           listaLuoghiePersone.add(WidgetLuoghiePersone(titolox: dati['titolo_spd_genteeluoghi'], urlimmagine: dati['foto_spd_genteeluoghi'], descrizione1luoghiepersone: dati['descrizione1_spd_genteeluoghi'], descrizione2luoghiepersone: dati['descrizione2_spd_genteeluoghi'],)


        );

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
    final Map imgList = {
      'https://viviarcole.it/aa_spd_immagini/cheprezzi2.jpg': [
        MyHomePage(
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
        ""
      ],
      'https://www.viviarcole.it/aa_spd_immagini/cheprezzi.jpg': [
        Farmaciediturno(),
        ""
      ],
      'https://www.viviarcole.it/aa_spd_immagini/cheprezzi1.jpg': [
        Ilmeteoit(
          nomeComune: nomeComune,
          idComune: valoreComune,
          nomeComunePerIlMeteo: nomeComuneIlMeteo,
        ),
        ""
      ],
//      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80' : Social(),
//      'https://www.viviarcole.it/aa_spd_immagini/secco.png' : Social()
    };

    final List<Widget> imageSliders = imgList.entries
        .map((item) => Container(
              child: Container(
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    child: GestureDetector(
                      onTap: () {
                        //Navigator.pop(context);

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OfferteSpeciali()));
                      },
                      child: Stack(
                        children: <Widget>[
                          Image.network(
                            item.key,
                            fit: BoxFit.cover,
                            width: 1000,
                            height: 150,
                          ),
//                          Positioned(
//                            bottom: -7,
//                            left: 0.0,
//                            right: 0.0,
//                            child: Container(
//                              decoration: BoxDecoration(
//                                gradient: LinearGradient(
//                                  colors: [
//                                    Color.fromARGB(0, 0, 0, 0),
//                                    Color.fromARGB(0, 0, 0, 0)
//                                  ],
//                                  begin: Alignment.bottomRight,
//                                  end: Alignment.bottomCenter,
//                                ),
//                              ),
//                              padding: EdgeInsets.symmetric(
//                                  vertical: 10.0, horizontal: 20.0),
//                              child: Container(
//                                margin: EdgeInsets.only(top: 10),
//                                child: Text(
//                                  item.value[1],
//                                  textAlign: TextAlign.center,
//                                  style: TextStyle(
//                                    color: Colors.black,
//                                    fontSize: 17.0,
//                                    fontWeight: FontWeight.bold,
//                                  ),
//                                ),
//                              ),
//                            ),
//                          ),
                        ],
                      ),
                    )),
              ),
            ))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('SA PASSA DOMAN'),
        brightness: Brightness.dark, // orologio e wifi bianchi

        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ScrollinoDiverseForme()));
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 7, left: 1, right: 1),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .55,
                  child: GridView.count(
                    crossAxisSpacing: 3,
                    mainAxisSpacing: 3,
                    primary: false,
                    crossAxisCount: 3,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => Comuni()));
                        },
                        child: Container(
                          color: Colors.blue.shade100, //Color(0xffd0ddff),,

                            padding: EdgeInsets.only(
                              top: 20,
                              left: 3,
                              right: 3,
                            ),
                            child: Column(
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
                            )),
                      ),
                      CarouselSlider(
                        options: CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 1.6,
                          enlargeCenterPage: true,
                          reverse: false,
                        ),
                        items: imageSliders,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage(
                                      valoreComune: valoreComune,
                                      valoreZona: valoreZona,
                                      comuneRecuperato: comuneRecuperato,
                                      zonaRecuperata: zonaRecuperata,
                                      nomeComune: nomeComune,
                                      nomeZona: nomeZona,
                                      valoreColoreZona: valoreColoreZona,
                                      valoreColoreTestoZona:
                                          valoreColoreTestoZona,
                                      coloreDaPassare: coloreDaPassare,
                                      coloreTestoDaPassare:
                                          coloreTestoDaPassare,
                                      listaDati: listaDati)));
                        },
                        child: Container(
                          height: 180,
                          //width: 180,
                          color: Colors.blue.shade900,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
//                      Container(
//                        height: 140,
//                        width: double.infinity,
//                        child: Icon(Icons.delete,
//                          color: Colors.white,
//                          size: 135,
//
//                        ),
//                      ),
                              Container(
                                height: 115,
                                width: double.infinity,
                                padding: EdgeInsets.only(
                                    top: 15, left: 10, right: 5, bottom: 1),
                                child: Text(
                                  "SA PASSA DOMAN",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          //Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Ilmeteoit(
                                  nomeComune: nomeComune,
                                  idComune: valoreComune,
                                  nomeComunePerIlMeteo: nomeComuneIlMeteo,
                                ),
                              ));
                        },
                        child: Container(
                          height: 180,
                          // width: 180,
                          color: Colors.blue.shade100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                height: 50,
                                width: double.infinity,
                                child: Icon(
                                  MaterialCommunityIcons.weather_partly_cloudy,
                                  color: Colors.white,
                                  size: 70,
                                ),
                              ),
                              Container(
                                height: 50,
                                width: double.infinity,
                                padding: EdgeInsets.only(top: 35, left: 3),
                                child: Text(
                                  "IL METEO",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue.shade900),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          //Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Farmaciediturno(),
                              ));
                        },
                        child: Center(
                          child: Container(
                            height: 180,
                            //width: 300,
                            color: Colors.blue.shade100, //Color(0xffd0ddff),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 10),
                                  height: 50,
                                  width: double.infinity,
                                  child: Icon(
                                    MaterialIcons.local_pharmacy,
                                    color: Colors.white,
                                    size: 70,
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(top: 35, left: 3),
                                  child: Text(
                                    "FARMACIE H24",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue.shade900),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          //Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Eventi(),
                              ));
                        },
                        child: Center(
                          child: Container(
                            height: 180,
                            //width: 300,
                            color: Colors.blue.shade100, //Color(0xffd0ddff),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 10),
                                  height: 50,
                                  width: double.infinity,
                                  child: Icon(
                                    SimpleLineIcons.event,
                                    color: Colors.white,
                                    size: 60,
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(top: 35, left: 3),
                                  child: Text(
                                    "EVENTI",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue.shade900,
                                  ),
                                ),
                                ),],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                         // Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SantoDelGiorno(),
                              ));
                        },
                        child: Center(
                          child: Container(
                            height: 180,
                            //width: 300,
                            color: Colors.blue.shade100,//Color(0xffd0ddff),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50,
                                  width: double.infinity,
                                  child: Icon(
                                    Ionicons.ios_people,
                                    color: Colors.white,
                                    size: 70,
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(
                                      top: 20, left: 7, right: 7),
                                  child: Text(
                                    "SANTO DEL GIORNO",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue.shade900,
                                  ),
                                ),
                                ),],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          //Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StaseraInTv(),
                              ));
                        },
                        child: Center(
                          child: Container(
                            height: 180,
                            //width: 300,
                            color: Colors.blue.shade100, //Color(0xffd0ddff),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50,
                                  width: double.infinity,
                                  child: Icon(
                                    Ionicons.ios_tv,
                                    color: Colors.white,
                                    size: 70,
                                  ),
                                ),
                                Container(
                                  height: 60,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(
                                      top: 20, left: 7, right: 7),
                                  child: Text(
                                    "PROGRAMMI TV",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue.shade900,
                                  ),
                                ),
                                ),],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                         // Navigator.pop(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Avvisi(),
                              ));
                        },
                        child: Center(
                          child: Container(
                            height: 180,
                            //width: 300,
                            color: Colors.blue.shade100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [

                                      Container(
                                        padding: EdgeInsets.only(top: 5, left: 30),
                                        height: 50,
                                        child: Icon(
                                          Ionicons.md_notifications,
                                          color: Colors.white,
                                          size: 60,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          ...numeroavvisi,

                                        ],
                                      )
                                    ],
                                  ),
                                ),

                                Container(
                                  height: 60,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(
                                      top: 20, left: 7, right: 7),
                                  child: Text(
                                    "AVVISI",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue.shade900,
                                  ),
                                ),
                                ),],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * .30,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: false,
                      aspectRatio: 2.2,
                      enlargeCenterPage: true,
                      reverse: true,
                    ),
                    items: listaLuoghiePersone,
                  ),
                )
              ],
            )),
      ),
    );
  }
}

//class ListaOggetti {
//  String percorsofoto;
//  Object pagina;
//
//  ListaOggetti({@required this.percorsofoto, @required this.pagina});
//}
