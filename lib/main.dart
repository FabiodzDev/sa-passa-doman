import 'package:flutter/material.dart';
import 'package:sapassadoman/giornirifiutiblu.dart';
import 'package:sapassadoman/rifiuti.dart';
import 'package:sapassadoman/tipoicone.dart';
import 'home.dart';
import 'info.dart';
import 'recuperaData.dart';
import 'giornirifiuti.dart';
import 'zonaGialla.dart';
import 'zonaBlu.dart';
import 'menuDrawer.dart';
import 'splashScreen.dart';

final datadomani = Dataoggi();
final rifiutogiallo = AbbinamentoGiorniRifiuti(); // oggetto rifiuti giallo
final rifiutoblu = AbbinamentoGiorniRifiutiBLU(); // oggetto rifiuti blu
final iconaDaUtilizzare = ElencoIcone();

void main() {
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

  List <Widget> myPages = [Homex(), paginaZonaGialla(), paginaZonaBlu(), rifiuti(),paginaZonaBlu()];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

   // String rifiutodidomanigiallo = rifiutogiallo.verifica();
    // String rifiutodidomaniblu = rifiutoblu.verifica();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('SA PASSA DOMAN'),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
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
              Icons.home,
            ),
            label: "HOME",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.play_arrow,
              color: Colors.yellowAccent,
            ),
            label: "VIE",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.play_arrow,
              color: Colors.lightBlueAccent,
            ),
            label: "VIE",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: "RIFIUTI",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: "INFO",
          ),
        ],
      ),
    );
  }
}

