import 'package:flutter/material.dart';
import 'package:sapassadoman/giornirifiutiblu.dart';
import 'package:sapassadoman/tipoicone.dart';
import 'package:sapassadoman/tiporifiuti.dart';
import 'recuperaData.dart';
import 'giornirifiuti.dart';
import 'pulsantiDiNavigazione.dart';
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
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    String rifiutodidomanigiallo = rifiutogiallo.verifica();
    String rifiutodidomaniblu = rifiutoblu.verifica();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('SA PASSA DOMAN'),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
      ),
      drawer: menuDrawer(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .stretch, // la colonna si estende orizzontalmente
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              height: 30,
              child: Text(
                datadomani.dataDomani(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.yellow[200],
                    borderRadius: BorderRadius.circular(
                        30) // da un arrotondamento agli spigoli
                    ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch, // la colonna si estende orizzontalmente
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "ZONA GIALLA",
                        style: TextStyle(
                          color: Colors.yellow.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/zonaGialla');
                         },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(
                              top: 10, left: 20, right: 20, bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage(
                                  iconaDaUtilizzare.percorsoDaUtilizzare(
                                      rifiuto: rifiutodidomanigiallo),
                                ),
                                fit: BoxFit.contain,
                              ),
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        30) // da un arrotondamento agli spigoli
                                ),

                                child: Text(
                                  rifiutodidomanigiallo,
                                  // textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ],

                          ),
                          height: 30,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
              width: double.infinity, // si prende tutta la larghezza
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.circular(
                        30) // da un arrotondamento agli spigoli
                    ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "ZONA BLU",
                        style: TextStyle(
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/zonaBlu');
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(
                              top: 10, left: 20, right: 20, bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage(
                                  iconaDaUtilizzare.percorsoDaUtilizzare(
                                      rifiuto: rifiutodidomaniblu),
                                ),
                                fit: BoxFit.contain,
                              ),
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                // color: Colors.white,
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        30) // da un arrotondamento agli spigoli
                                ),
                                child: Text(
                                  rifiutodidomaniblu,
                                  //textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          height: 30,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: PulsantiDiNavigazione(),
    );
  }
}

