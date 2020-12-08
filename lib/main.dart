import 'package:flutter/material.dart';
import 'package:sapassadoman/giornirifiutiblu.dart';
import 'recuperaData.dart';
import 'giornirifiuti.dart';

final datadomani = Dataoggi();
final rifiutogiallo = AbbinamentoGiorniRifiuti(); // oggetto rifiuti giallo
final rifiutoblu = AbbinamentoGiorniRifiutiBLU(); // oggetto rifiuti blu

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sa passa doman',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage());
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

    String rifiutodioggigiallo = rifiutogiallo.verifica();
    String rifiutodioggiblu = rifiutoblu.verifica();



    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('SA PASSA DOMAN'),
        centerTitle: true,
        backgroundColor: Colors.green[700],
      ),
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
                // datadioggi.printData(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green.shade900,
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
                  //crossAxisAlignment: CrossAxisAlignment.stretch, // la colonna si estende orizzontalmente
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
                      child: Container(
                        padding: EdgeInsets.all(50),
                        margin: EdgeInsets.only(
                            top: 10, left: 20, right: 20, bottom: 20),
                        child: Text(
                          rifiutodioggigiallo,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        height: 30,
                        width: double.infinity,
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
                      child: Container(
                        padding: EdgeInsets.all(50),
                        margin: EdgeInsets.only(
                            top: 10, left: 20, right: 20, bottom: 20),
                        child: Text(
                          rifiutodioggiblu,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        height: 30,
                        width: double.infinity,
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

class PulsantiDiNavigazione extends StatefulWidget {
  @override
  _PulsantiDiNavigazioneState createState() => _PulsantiDiNavigazioneState();
}

class _PulsantiDiNavigazioneState extends State<PulsantiDiNavigazione> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
          ),
          label: "Setting",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.info),
          label: "Info",
        ),
      ],
    );
  }
}
