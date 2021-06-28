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

    List<StaggeredTile> _staggeredTiles = <StaggeredTile>[

      StaggeredTile.count(2, 2),
      StaggeredTile.count(1, 1),
      StaggeredTile.count(1, 1),

    ];

    List<Widget> _tiles = <Widget>[
//      Container(
//        child: Card(
//          color: Colors.blue.shade700,
//          child: InkWell(
//            onTap: () {
//              //Navigator.pop(context);
//              Navigator.push(
//                  context, MaterialPageRoute(builder: (context) => FasiLunari()));
//            },
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              crossAxisAlignment: CrossAxisAlignment.center,
//              children: [
//                Row(
//                  children: [
//                  Expanded(
//                    child: Icon(
//                      MaterialCommunityIcons.moon_new,
//                    color: Colors.white,
//                    size: 70,),
//                  ),
//                    Expanded(
//                      child: Icon(
//                        MaterialCommunityIcons.moon_first_quarter,
//                        color: Colors.white,
//                        size: 70,),
//                    ),
//                  ],
//                ),
//                SizedBox(
//                  height: 10,
//
//                ),
//                Row(
//                  children: [
//                    Expanded(
//                      child: Icon(
//                        MaterialCommunityIcons.moon_last_quarter,
//                        color: Colors.white,
//                        size: 70,),
//                    ),
//                    Expanded(
//                      child: Icon(
//                        MaterialCommunityIcons.moon_full,
//                        color: Colors.white,
//                        size: 70,),
//                    ),
//                  ],
//                )
//              ],
//            ),
//
//    ),
//        ),
//      ),


      SoloIcona(
        backgroundColor: Colors.amber.shade400,
        iconData: FontAwesome.calendar,
        coloreIcona: Colors.white,
        dimensioneIcona: 150,
        destinazione: CalendarioSemina(),
      ),
      Container(
        child: Card(
          color: Colors.green.shade400,
          child: InkWell(
            onTap: () {
              //Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => DettagliSemina()));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Icon(
                          FontAwesome.ellipsis_v,
                        color: Colors.white,
                        size: 70,),
                    ),
                    Expanded(
                      child: Icon(
                        FontAwesome.ellipsis_v,
                        color: Colors.white,
                        size: 70,),
                    ),
                    Expanded(
                      child: Icon(
                        FontAwesome.ellipsis_v,
                        color: Colors.white,
                        size: 70,),
                    ),
                  ],
                ),


              ],
            ),

          ),
        ),
      ),

      SoloIcona(
        backgroundColor: Colors.red.shade400,
        coloreIcona: Colors.white,
        iconData: FontAwesome.youtube_square,
        dimensioneIcona: 80,
        destinazione: YoutubeVideoAgricoli(),
      ),
//
//      Container(
//        child: Card(
//          color: Colors.blue,
//          child: InkWell(
//            onTap: () {
//              Navigator.pop(context);
//              Navigator.push(
//                  context, MaterialPageRoute(builder: (context) => Comuni()));
//            },
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              crossAxisAlignment: CrossAxisAlignment.center,
//              children: [
//                Text(
//                  "Il tuo comune:",
//                  style: TextStyle(color: Colors.blue.shade900),
//                ),
//                Text(
//                  "prova",
//                  textAlign: TextAlign.center,
//                  style: TextStyle(
//                      fontWeight: FontWeight.w700,
//                      fontSize: 15,
//                      color: Colors.blue.shade900),
//                ),
//                SizedBox(
//                  height: 3,
//                ),
//                Text(
//                  "La tua zona:",
//                  style: TextStyle(color: Colors.blue.shade900),
//                ),
//                Text(
//                  "prova2",
//                  textAlign: TextAlign.center,
//                  style: TextStyle(
//                      fontWeight: FontWeight.w700,
//                      fontSize: 15,
//                      color: Colors.blue.shade900),
//                ),
//              ],
//            ),
//          ),
//        ),
//      ),
//      Container(
//        child: Card(
//          color: Colors.white,
//          child: InkWell(
//            onTap: () {
//              Navigator.pop(context);
//              Navigator.push(
//                  context, MaterialPageRoute(builder: (context) => Comuni()));
//            },
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              crossAxisAlignment: CrossAxisAlignment.center,
//              children: [
//                Text(
//                  "Il tuo comune:",
//                  style: TextStyle(color: Colors.blue.shade900),
//                ),
//                Text(
//                  "prova",
//                  textAlign: TextAlign.center,
//                  style: TextStyle(
//                      fontWeight: FontWeight.w700,
//                      fontSize: 15,
//                      color: Colors.blue.shade900),
//                ),
//                SizedBox(
//                  height: 3,
//                ),
//                Text(
//                  "La tua zona:",
//                  style: TextStyle(color: Colors.blue.shade900),
//                ),
//                Text(
//                  "prova2",
//                  textAlign: TextAlign.center,
//                  style: TextStyle(
//                      fontWeight: FontWeight.w700,
//                      fontSize: 15,
//                      color: Colors.blue.shade900),
//                ),
//              ],
//            ),
//          ),
//        ),
//      ),

    ];


    return Scaffold(
      appBar: AppBar(
        title: Text("COLTIVARE CON LA LUNA"),
        centerTitle: true,
        brightness: Brightness.dark, // orologio e wifi bianchi

      ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://www.viviarcole.it/aa_spd_immagini/fotoluoghiepersone/nightluna.jpg"),
                  fit: BoxFit.cover),
              color: Colors.white,
//              border: Border.all(
//
//                //color: Colors.pink[800], // Set border color
//                  width: 0.0), // Set border width
//              borderRadius: BorderRadius.all(
//                  Radius.circular(10.0)), // Set rounded corner radius
            ),
//            color: Colors.white,
            child: Padding(
                padding: const EdgeInsets.only(top: 260),
                child: StaggeredGridView.count(
                  crossAxisCount: 3,
                  staggeredTiles: _staggeredTiles,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  padding: const EdgeInsets.all(4),
                  children: _tiles,
                )),
          ),
        ));

  }
}
