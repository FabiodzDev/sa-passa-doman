import 'package:flutter/material.dart';
import 'package:sapassadomantter/paginaPopup.dart';
import 'package:sapassadomantter/prossimecinquescadenze.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'homeblu.dart';
import 'homegialla.dart';
import 'modalita.dart';
import 'rifiuti.dart';
import 'package:sapassadomantter/tipoicone.dart';
import 'giornirifiutiblu.dart';
import 'home.dart';
import 'informazioni.dart';
import 'recuperaData.dart';
import 'giornirifiuti.dart';
import 'zonaGialla.dart';
import 'zonaBlu.dart';
import 'menuDrawer.dart';
import 'splashScreen.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';


final datadomani = Dataoggi();
final rifiutogiallo = AbbinamentoGiorniRifiuti(); // oggetto rifiuti giallo
final rifiutoblu = AbbinamentoGiorniRifiutiBLU(); // oggetto rifiuti blu
final iconaDaUtilizzare = ElencoIcone();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sa passa doman',
        initialRoute: '/splash',            // pagina iniziale dell'app settata qui sotto, dove setto tutte le pagine che ho
        routes: { // elenco delle pagine della mia app
          '/splash' : (context) => Splash(),
          '/' : (context) => MyHomePage(),
          '/zonaGialla' : (context) => paginaZonaGialla(),
          '/zonaBlu' : (context) => paginaZonaBlu(),

        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        //home: MyHomePage()  Nel caso avessi più pagine da navigare, non uso il parametro home ma InitialRoute
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  bool selezionata;

    List <Widget> myPages = [paginaZonaGialla(), paginaZonaBlu(), Rifiuti(), ModalitaDiRaccolta()];
    int selectedIndex = 0;
//  String zona = "blu";


  Future<void> recuperaStatoZona() async {
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();
    final bool recuperaZona= sharedPref.getBool('zona');
    setState(() => selezionata = recuperaZona);

    if (selezionata == true) {
//      myPages.insert(0, HomeGialla());
      setState(() {
        myPages = [HomeGialla(), paginaZonaGialla(), paginaZonaBlu(), Rifiuti(), ModalitaDiRaccolta()];
      });
    } else if (selezionata == false) {
//      myPages.insert(0, HomeBlu());
    setState(() {
      myPages = [HomeBlu(), paginaZonaGialla(), paginaZonaBlu(), Rifiuti(), ModalitaDiRaccolta()];

    });

    } else {
      setState(() {
        myPages = [Homex(), paginaZonaGialla(), paginaZonaBlu(), Rifiuti(), ModalitaDiRaccolta()];

      });

    }
  }


  void autorizzazioneNotificheIos() async {

    FirebaseMessaging messaging = FirebaseMessaging.instance;

    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

//    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
//      print('L\'utente ha accettato la notifica');
//    } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
//      print('User granted provisional permission');
//    } else {
//      print('L\'utente ha rifiutato la notifica');
//    }

  }





  Widget creaContainerPopup(BuildContext context){
    return PaginaPopup();
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    recuperaStatoZona();


  }

  @override
  Widget build(BuildContext context) {

    recuperaStatoZona();

    autorizzazioneNotificheIos();



   // String rifiutodidomanigiallo = rifiutogiallo.verifica();
    // String rifiutodidomaniblu = rifiutoblu.verifica();

    return Scaffold(
      //resizeToAvoidBottomPadding: false,  // DOVREBBE NON MANDARE IN OVERFLOW I BOTTONI
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('SA PASSA DOMAN'),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
        actions: [ Align(
          alignment: Alignment.center,
          child: IconButton(
            color: Colors.white,
            // alignment: Alignment.topRight,
            iconSize: 26,
            onPressed: (){
              showModalBottomSheet(context: context, builder: creaContainerPopup);
            },
            icon: Icon(
              Entypo.user,
            ),
          ),
        ),Align(
          alignment: Alignment.center,
          child: IconButton(
            color: Colors.white,
            // alignment: Alignment.topRight,
            iconSize: 26,
            onPressed: (){

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProssimeCinqueScadenze()));

            },
            icon: Icon(Entypo.calendar,
            ),
          ),
        )],
      ),
      drawer: menuDrawer(),
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
        backgroundColor: Colors.blue[700],
        selectedItemColor: Colors.white,
        selectedFontSize: 20,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Entypo.home,
            ),
            label: "HOME",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Entypo.location_pin,
              color: Colors.yellowAccent,
            ),
            label: "VIE",
          ),
          BottomNavigationBarItem(
            icon: Icon(Entypo.location_pin,
              color: Colors.lightBlueAccent,
            ),
            label: "VIE",
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

