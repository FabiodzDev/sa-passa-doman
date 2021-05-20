import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:sapassadomantter/main.dart';
import 'package:sapassadomantter/screen/chisiamo.dart';
import 'package:sapassadomantter/screen/contattiapp.dart';
import 'package:sapassadomantter/screen/social.dart';
import 'package:sapassadomantter/widget/widgetcentroraccolta.dart';

import '../sharedpreference.dart';
import 'package:sapassadomantter/screen/altreinfo.dart';
import 'centrodiraccolta.dart';
import 'contatti.dart';

class MenuDrawer extends StatefulWidget {
  @override
  _MenuDrawerState createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {

  String codiceComune;
  String nomeComune;

  SharedPreference sharedpref = SharedPreference();

  Future<Void> recuperaDatiComune() async {

    codiceComune = await sharedpref.recuperaComuneFunz();
    nomeComune = await sharedpref.recuperaNomeComuneFunz();

    setState(() {
      codiceComune = codiceComune;
      nomeComune = nomeComune;
    });

}

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    recuperaDatiComune();
  }

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
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      letterSpacing: 2,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "$nomeComune E FRAZIONI",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      letterSpacing: 2,
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
            ),
          ),
          GestureDetector(
            child: ListTile(
              leading: Icon(Entypo.info),
              title: Text("INFORMAZIONI APP", style: TextStyle(fontSize: 18),),
              subtitle: Text("Chi siamo e Disclaimer"),
            ),
            onTap: (){

              Navigator.pop(context);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChiSiamo()));
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

              Navigator.pop(context);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Social()));
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

              Navigator.pop(context);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ContattiApp()));
            },
          ),
          SizedBox(height: 3,),

          GestureDetector(
            child: ListTile(
              leading: Icon(FontAwesome5Solid.phone

              ),
              title: Text("NUMERI UTILI", style: TextStyle(fontSize: 18),),
              subtitle: Text("Comune e ritiro ingombranti"),
            ),
            onTap: (){
              Navigator.pop(context);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Contatti(id_comune: codiceComune,)));
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

              Navigator.pop(context);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CentroDiRaccolta(id_comune: codiceComune)));
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

              Navigator.pop(context);

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AltreInfo(id_comune: codiceComune)));
            },
          ),




        ],
      ),
    );
  }
}
