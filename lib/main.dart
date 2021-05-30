//import 'package:flutter/material.dart';
//import 'package:sapassadomantter/vecchiapp/paginaPopup.dart';
//import 'package:sapassadomantter/vecchiapp/prossimecinquescadenze.dart';
//import 'package:sapassadomantter/vecchiapp/tipoicone.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//import 'homeblu.dart';
//import 'homegialla.dart';
//import 'modalita.dart';
//import 'rifiuti.dart';
//import 'giornirifiutiblu.dart';
//import 'home.dart';
//import 'informazioni.dart';
//import 'recuperaData.dart';
//import 'giornirifiuti.dart';
//import 'zonaGialla.dart';
//import 'zonaBlu.dart';
//import 'menuDrawer.dart';
//import 'splashScreen.dart';
//import 'package:flutter_icons/flutter_icons.dart';
//import 'package:firebase_messaging/firebase_messaging.dart';
//import 'package:firebase_core/firebase_core.dart';
//
//
//final datadomani = Dataoggi();
//final rifiutogiallo = AbbinamentoGiorniRifiuti();
//final rifiutoblu = AbbinamentoGiorniRifiutiBLU();
//final iconaDaUtilizzare = ElencoIcone();
//
//void main() async {
//  WidgetsFlutterBinding.ensureInitialized();
//  await Firebase.initializeApp();
//  runApp(MyApp());
//}
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//        title: 'Sa passa doman',
//        initialRoute: '/splash',
//        routes: {
//          '/splash' : (context) => Splash(),
//          '/' : (context) => MyHomePage(),
//          '/zonaGialla' : (context) => paginaZonaGialla(),
//          '/zonaBlu' : (context) => paginaZonaBlu(),
//
//        },
//        debugShowCheckedModeBanner: false,
//        theme: ThemeData(
//          primarySwatch: Colors.blue,
//          visualDensity: VisualDensity.adaptivePlatformDensity,
//        ),
//    );
//  }
//}
//
//
//class MyHomePage extends StatefulWidget {
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//
//class _MyHomePageState extends State<MyHomePage> {
//
//  bool selezionata;
//
//    List <Widget> myPages = [paginaZonaGialla(), paginaZonaBlu(), Rifiuti(), ModalitaDiRaccolta()];
//    int selectedIndex = 0;
//
//
//  Future<void> recuperaStatoZona() async {
//    final SharedPreferences sharedPref = await SharedPreferences.getInstance();
//    final bool recuperaZona= sharedPref.getBool('zona');
//    setState(() => selezionata = recuperaZona);
//
//    if (selezionata == true) {
//      setState(() {
//        myPages = [HomeGialla(), paginaZonaGialla(), paginaZonaBlu(), Rifiuti(), ModalitaDiRaccolta()];
//      });
//    } else if (selezionata == false) {
//    setState(() {
//      myPages = [HomeBlu(), paginaZonaGialla(), paginaZonaBlu(), Rifiuti(), ModalitaDiRaccolta()];
//
//    });
//
//    } else {
//      setState(() {
//        myPages = [Homex(), paginaZonaGialla(), paginaZonaBlu(), Rifiuti(), ModalitaDiRaccolta()];
//
//      });
//
//    }
//  }
//
//
//  void autorizzazioneNotificheIos() async {
//
//    FirebaseMessaging messaging = FirebaseMessaging.instance;
//
//    NotificationSettings settings = await messaging.requestPermission(
//      alert: true,
//      announcement: false,
//      badge: true,
//      carPlay: false,
//      criticalAlert: false,
//      provisional: false,
//      sound: true,
//    );
//
//
//
//  }
//
//
//
//
//
//  Widget creaContainerPopup(BuildContext context){
//    return PaginaPopup();
//  }
//
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    recuperaStatoZona();
//
//
//  }
//
//  @override
//  Widget build(BuildContext context) {
//
//    recuperaStatoZona();
//
//    autorizzazioneNotificheIos();
//
//
//    return Scaffold(
//      backgroundColor: Colors.white,
//      appBar: AppBar(
//        title: Text('SA PASSA DOMAN'),
//        centerTitle: true,
//        backgroundColor: Colors.blue[700],
//        actions: [ Align(
//          alignment: Alignment.center,
//          child: IconButton(
//            color: Colors.white,
//            iconSize: 26,
//            onPressed: (){
//              showModalBottomSheet(context: context, builder: creaContainerPopup);
//            },
//            icon: Icon(
//              Entypo.user,
//            ),
//          ),
//        ),Align(
//          alignment: Alignment.center,
//          child: IconButton(
//            color: Colors.white,
//            // alignment: Alignment.topRight,
//            iconSize: 26,
//            onPressed: (){
//
//              Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                      builder: (context) => ProssimeCinqueScadenze()));
//
//            },
//            icon: Icon(Entypo.calendar,
//            ),
//          ),
//        )],
//      ),
//      drawer: menuDrawer(),
//      body: myPages[selectedIndex],
//
//      bottomNavigationBar: BottomNavigationBar(
//        currentIndex: selectedIndex,
//        onTap: (index){
//          setState(() {
//            selectedIndex = index;
//            print(selectedIndex);
//          });
//        } ,
//        type: BottomNavigationBarType.fixed,
//        backgroundColor: Colors.blue[700],
//        selectedItemColor: Colors.white,
//        selectedFontSize: 20,
//        unselectedItemColor: Colors.white,
//        items: const <BottomNavigationBarItem>[
//          BottomNavigationBarItem(
//            icon: Icon(
//              Entypo.home,
//            ),
//            label: "HOME",
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(
//              Entypo.location_pin,
//              color: Colors.yellowAccent,
//            ),
//            label: "VIE",
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Entypo.location_pin,
//              color: Colors.lightBlueAccent,
//            ),
//            label: "VIE",
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(
//              Entypo.flow_tree,
//            ),
//            label: "RIFIUTI",
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Entypo.database),
//            label: "MOD.",
//          ),
//
//        ],
//      ),
//    );
//  }
//}
//


import 'dart:convert';
import 'dart:ffi';

import 'package:sapassadomantter/screen/scrollinoiniziale.dart';
import 'package:sapassadomantter/sharedpreference.dart';
import 'package:sapassadomantter/screen/Drawer.dart';
import 'package:sapassadomantter/screen/elencocomuni.dart';
import 'package:sapassadomantter/screen/modalita.dart';
import 'package:sapassadomantter/screen/scrollinoiniziale.dart';
import 'package:sapassadomantter/screen/zonepage.dart';
import 'package:sapassadomantter/screen/cercarifiuto.dart';

import 'package:sapassadomantter/sharedpreference.dart';
import 'package:sapassadomantter/widget/widgethome.dart';

import './widget/calendario.dart';

import 'package:flutter_icons/flutter_icons.dart';


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        accentColor: Colors.orange,
        primarySwatch: Colors.lightBlue,
        //fontFamily: 'OpenSans',
//        textTheme: Theme.of(context).textTheme.apply(
//            fontFamily: 'OpenSans',
//            bodyColor: Colors.black,
//            displayColor: Colors.red),
      ),
      home: ComplicatedImageDemo(),
    );
  }
}

class MyHomePage extends StatefulWidget {

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

  MyHomePage({this.valoreComune, this.valoreZona, this.comuneRecuperato, this.zonaRecuperata, this.nomeComune, this.nomeZona, this.valoreColoreZona, this.valoreColoreTestoZona, this.coloreDaPassare, this.coloreTestoDaPassare, this.listaDati});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  SharedPreference sharedpref = SharedPreference();



  int selectedIndex = 0;


//// RECUPERIAMO LE SHARED PREFERENCE
//  Future<Void> ricerca() async {
//
//    widget.valoreComune = await sharedpref.recuperaComuneFunz();
//    widget.nomeComune = await sharedpref.recuperaNomeComuneFunz();
//
//    widget.valoreZona = await sharedpref.recuperaZonaFunz();
//    widget.nomeZona = await sharedpref.recuperaNomeZonaFunz();
//
//    widget.valoreColoreZona = await sharedpref.recuperaColoreZonaFunz();
//    widget.valoreColoreTestoZona = await sharedpref.recuperaColoreTestoZonaFunz();
//
//// SE VALORE COMUNE E' NULLO MANDIAMO L'UTENTE A SELEZIONARE IL COMUNE, ESPLODENDO QUESTA PAGINA
//    if (widget.valoreComune == null) {
//
//      Navigator.pop(context);
//      Navigator.push(context, MaterialPageRoute(builder: (context) => Comuni()));
//
//
//    } else if (widget.valoreZona == null){
//
//      Navigator.pop(context);
//      Navigator.push(context,  MaterialPageRoute(builder: (context) => ZonePage(id_comune: widget.valoreComune, nome_comune: widget.nomeComune )));
//
//    } else {
//
//    setState(() {
//      widget.valoreComune = widget.valoreComune;
//      widget.nomeComune = widget.nomeComune;
//      widget.nomeZona = widget.nomeZona;
//      widget.valoreZona = widget.valoreZona;
//      widget.valoreColoreZona = widget.valoreColoreZona;
//      widget.valoreColoreTestoZona = widget.valoreColoreTestoZona;
//    });
//
//
//    convertiColoreSfondo(widget.valoreColoreZona);
//    convertiColoreTesto(widget.valoreColoreTestoZona);
//
//    recuperaValore(widget.valoreComune, widget.valoreZona);
//
//  }}

//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//
//    ricerca();
//
//  }



  @override
  Widget build(BuildContext context) {

    List <Widget> myPages = [WidgetHome(coloreDaPassare: widget.coloreDaPassare, nomeComune: widget.nomeComune, nomeZona: widget.nomeZona, coloreTestoDaPassare: widget.coloreTestoDaPassare, listaDati: widget.listaDati,), CercaRifiuto(), ModalitaDiRaccolta(id_comune: widget.valoreComune,)];

    return Scaffold(
      drawer: MenuDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("SA PASSA DOMAN"),
        actions: [
//          IconButton(
//            icon: Icon(Icons.update),
//            onPressed: () {
//              Navigator.pop(context);
//              Navigator.push(context,
//                  MaterialPageRoute(builder: (context) => Comuni()));},
//          ),
//          IconButton(
//            icon: Icon(Icons.delete_forever),
//            onPressed: () {
//
//              sharedpref.rimuoviComuneZona();
//              Navigator.pop(context);
//              Navigator.push(context, MaterialPageRoute(builder: (context) => ComplicatedImageDemo()));
//            },
//          ),
          IconButton(
            icon: Icon(MaterialCommunityIcons.grid),

            onPressed: () {

              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => ComplicatedImageDemo()));
            },
          )
        ],
      ),

      body: myPages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index){
          setState(() {
            selectedIndex = index;
            print(selectedIndex);
          });
        } ,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.lightBlue,// coloreDaPassare,
        selectedItemColor: Colors.black, //coloreTestoDaPassare,
        selectedFontSize: 15,
        //unselectedItemColor: coloreTestoDaPassare,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Entypo.home,
            ),
            label: "HOME",
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Entypo.flow_tree,
            ),
            label: "RIFIUTI",
          ),
          BottomNavigationBarItem(
            icon: Icon(Entypo.database),
            label: "MOD.",
          ),

        ],
      ),
    );
  }
}
