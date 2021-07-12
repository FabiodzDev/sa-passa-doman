import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:sapassadomantter/screen/scrollinocondiverseforme.dart';
import 'package:sapassadomantter/screen/youtube.dart';



import 'calendariosemina.dart';
import 'dettaglisemina.dart';
import 'elencocomuni.dart';
import 'fasilunari.dart';


class AreaAgrigola extends StatefulWidget {
  @override
  _AreaAgrigolaState createState() => _AreaAgrigolaState();
}

class _AreaAgrigolaState extends State<AreaAgrigola> {



  @override
  Widget build(BuildContext context) {




    return Scaffold(
      appBar: AppBar(
        title: Text("COLTIVARE CON LA LUNA"),
        centerTitle: true,
        brightness: Brightness.dark, // orologio e wifi bianchi

      ),
        body: SafeArea(
          child: Container(
//            decoration: BoxDecoration(
//              image: DecorationImage(
//                  image: NetworkImage(
//                      "https://www.viviarcole.it/aa_spd_immagini/fotoluoghiepersone/nightluna.jpg"),
//                  fit: BoxFit.cover),
//              color: Colors.white,
////              border: Border.all(
////
////                //color: Colors.pink[800], // Set border color
////                  width: 0.0), // Set border width
////              borderRadius: BorderRadius.all(
////                  Radius.circular(10.0)), // Set rounded corner radius
//            ),
//            color: Colors.white,
            child: Container(
              padding: EdgeInsets.only(top: 25, left: 10, right: 10, bottom: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Secondo la tradizione contadina, è consigliato seguire le fasi lunari per la semina degli ortaggi. ',
                      style: TextStyle(
                        fontSize: 18
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    child: Text(
                        'In questa sezione proponiamo il calendario lunare e le modalità per la semina.',
                      style: TextStyle(
                          fontSize: 18
                      ),
                      textAlign: TextAlign.justify,

                    ),
                  ),
                  SizedBox(height: 10,),


                  Container(
                    padding: EdgeInsets.only(
                      top: 60,
                      left: 10,
                      right: 10
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          child: Icon(
                            MaterialCommunityIcons.calendar_month,
                            color: Colors.amber,
                            size: 170,),
                          onTap: (){
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => CalendarioSemina()));

                          },
                        ),
                        GestureDetector(
                          child: Icon(
                            MaterialCommunityIcons.pine_tree,
                            color: Colors.green,
                            size: 170,),
                          onTap: (){
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => DettagliSemina()));
                          },
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    child: Text(
                      'Le informazioni sono state recepite dal sito www.lortolano.com .',
                      style: TextStyle(
                          fontSize: 18
                      ),
                      textAlign: TextAlign.justify,

                    ),
                  ),




//                      StaggeredGridView.count(
//                        crossAxisCount: 3,
//                        staggeredTiles: _staggeredTiles,
//                        mainAxisSpacing: 4,
//                        crossAxisSpacing: 4,
//                        padding: const EdgeInsets.all(4),
//                        children: _tiles,
//                      ),
                ],
              ),
            ),
          ),
        ));

  }
}
