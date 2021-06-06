import 'package:flutter/material.dart';

class WidgetHome extends StatelessWidget {

  Color coloreDaPassare;
  String nomeComune;
  String nomeZona;
  Color coloreTestoDaPassare;
  List listaDati;

  WidgetHome({@required this.coloreDaPassare, @required this.nomeComune, @required this.nomeZona, @required this.coloreTestoDaPassare, @required this.listaDati});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .85,
      child: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: coloreDaPassare,
                    borderRadius: BorderRadius.circular(0) // da un arrotondamento agli spigoli
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text("$nomeComune", style: TextStyle(fontSize: 18, color: coloreTestoDaPassare,), textAlign: TextAlign.center,),
            Text("- Zona: $nomeZona", style: TextStyle(fontSize: 18, color: coloreTestoDaPassare,), textAlign: TextAlign.center,),

          ],
          )

              ),


              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                padding: EdgeInsets.only(top: 2),
//                decoration: BoxDecoration(
//                    color: Colors.white,
//                    borderRadius: BorderRadius.circular(10), // da un arrotondamento agli spigoli
//                    border: Border.all(
//                      color: Colors.blue.shade800,
//                      width: 2,
//                    )
//                ),
                height: MediaQuery.of(context).size.height * .85,
                child: ListView(
                  children: [
                    ...listaDati, // INCLUDO UNA LISTA DI WIDGET IN UN CHILDREN
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
