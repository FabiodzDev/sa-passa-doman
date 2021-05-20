import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'calendarioCompletoBlu.dart';
import 'calendarioCompletoGiallo.dart';
import 'giornirifiuti.dart';
import 'giornirifiutiblu.dart';
import '../main.dart';


AbbinamentoGiorniRifiutiBLU giornorifiutoblu = AbbinamentoGiorniRifiutiBLU();
AbbinamentoGiorniRifiuti giornorifiutogiallo = AbbinamentoGiorniRifiuti();



class ProssimeCinqueScadenze extends StatefulWidget {
  @override
  _ProssimeCinqueScadenzeState createState() => _ProssimeCinqueScadenzeState();
}

class _ProssimeCinqueScadenzeState extends State<ProssimeCinqueScadenze> {

  List <Widget> prossimeCinqueScadenze = [];
  var selezionata;

  Future<void> recuperaStatoZona() async {
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();
    final bool recuperaZona= sharedPref.getBool('zona');
    setState(() => selezionata = recuperaZona);

    if (selezionata == true) {
//      myPages.insert(0, HomeGialla());
      setState(() {
        prossimeCinqueScadenze = [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CalendarioCompletoGiallo()));
            },
            child: giornorifiutogiallo.listOfWidgets(),
          ),
        ];
      });
    } else if (selezionata == false) {
//      myPages.insert(0, HomeBlu());
      setState(() {
        prossimeCinqueScadenze = [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CalendarioCompletoBlu()));
            },
            child: giornorifiutoblu.listOfWidgets(),
          ),
        ];
      });


    } else {
//      myPages.insert(0, Homex());

      setState(() {
        prossimeCinqueScadenze = [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CalendarioCompletoGiallo()));
            },
            child: giornorifiutogiallo.listOfWidgets(),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CalendarioCompletoBlu()));
            },
            child: giornorifiutoblu.listOfWidgets(),
          ),];
      });

    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    recuperaStatoZona();
//    impostaZona();
  }



  @override
  Widget build(BuildContext context) {

    recuperaStatoZona();


//    prossimeCinqueScadenze = [
//      GestureDetector(
//        onTap: () {
//          Navigator.push(
//              context,
//              MaterialPageRoute(
//                  builder: (context) => CalendarioCompletoGiallo()));
//        },
//        child: giornorifiutogiallo.listOfWidgets(),
//      ),
//      GestureDetector(
//        onTap: () {
//          Navigator.push(
//              context,
//              MaterialPageRoute(
//                  builder: (context) => CalendarioCompletoBlu()));
//        },
//        child: giornorifiutoblu.listOfWidgets(),
//      ),
//    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("LE PROSSIME 5 SCADENZE"),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Entypo.info),
        onPressed: () { showDialog(
            context: context,
            builder: (BuildContext context){
              return AlertDialog(
                title: Text("CALENDARIO COMPLETO"),
                content: Text("Clicca su una data qualsiasi per vedere il calendario completo"),
              );
            });},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
        ),
        mini: true
      ),
      body: Container(
        child: ListView(
          children: prossimeCinqueScadenze
          ,
        ),

      ),
    );
  }
}
