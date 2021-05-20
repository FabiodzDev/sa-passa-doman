import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:sapassadomantter/vecchiapp/centrorifiuti.dart';
import 'package:sapassadomantter/vecchiapp/facebookpage.dart';
import 'package:sapassadomantter/vecchiapp/numeriutili.dart';
import 'package:sapassadomantter/vecchiapp/tocati.dart';

import 'altreinfo.dart';
import 'calendarioCompletoBlu.dart';
import 'calendarioCompletoGiallo.dart';
import 'contatti.dart';
import 'giornirifiutiblu.dart';
import 'giornirifiuti.dart';
import 'informazioni.dart';

AbbinamentoGiorniRifiutiBLU giornorifiutoblu = AbbinamentoGiorniRifiutiBLU();
AbbinamentoGiorniRifiuti giornorifiutogiallo = AbbinamentoGiorniRifiuti();

class menuDrawer extends StatefulWidget {
  @override
  _menuDrawerState createState() => _menuDrawerState();
}

class _menuDrawerState extends State<menuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        // Important: Remove any padding from the ListView.
        //padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'SA PASSA DOMAN',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      letterSpacing: 2,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "ARCOLE E FRAZIONI",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 2,
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue[700],
            ),
          ),
          GestureDetector(
            child: ListTile(
              leading: Icon(Entypo.info),
              title: Text("INFORMAZIONI APP", style: TextStyle(fontSize: 18),),
              subtitle: Text("Chi siamo e Disclaimer"),
            ),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Informazioni()));
            },
          ),
          SizedBox(height: 3,),

          GestureDetector(
            child: ListTile(
              leading: Icon(Entypo.facebook),
              title: Text("SOCIAL", style: TextStyle(fontSize: 18),),
              subtitle: Text("Seguici su Facebook"),
            ),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FacebookPage()));
            },
          ),
          SizedBox(height: 3,),

          GestureDetector(
            child: ListTile(
              leading: Icon(FontAwesome5Solid.mail_bulk

              ),
              title: Text("CONTATTI APP", style: TextStyle(fontSize: 18),),
            ),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Contatti()));
            },
          ),
          SizedBox(height: 3,),

//          GestureDetector(
//            child: ListTile(
//              leading: Icon(FontAwesome5Solid.cog
//
//              ),
//              title: Text("TOCATI", style: TextStyle(fontSize: 18),),
//              subtitle: Text("Chi porta fuori l'immondizia?"),
//            ),
//            onTap: (){
//              Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                      builder: (context) => Tocati()));
//            },
//          ),
//          SizedBox(height: 3,),
          GestureDetector(
            child: ListTile(
              leading: Icon(FontAwesome5Solid.phone

              ),
              title: Text("NUMERI UTILI", style: TextStyle(fontSize: 18),),
              subtitle: Text("Comune e ritiro ingombranti"),
            ),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Numeriutili()));
            },
          ),
          SizedBox(height: 3,),
          GestureDetector(
            child: ListTile(
              leading: Icon(FontAwesome5Solid.location_arrow

              ),
              title: Text("CENTRO DI RACCOLTA RIFIUTI", style: TextStyle(fontSize: 18),),
              subtitle: Text("Urbani per utenze domestiche"),
            ),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CentroRifiuti()));
            },
          ),
          SizedBox(height: 3,),
          GestureDetector(
            child: ListTile(
              leading: Icon(FontAwesome5Solid.book_open

              ),
              title: Text("ALTRE INFO", style: TextStyle(fontSize: 18),),
            ),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AltreInfo()));
            },
          ),




        ],
      ),
    );
  }
}
