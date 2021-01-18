import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'calendarioCompletoBlu.dart';
import 'calendarioCompletoGiallo.dart';
import 'giornirifiutiblu.dart';
import 'giornirifiuti.dart';

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
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'ARCOLE',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      letterSpacing: 2,
                    ),
                  ),
                  Text(
                    "PROSSIMI 5 GIORNI",
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
          ),
        ],
      ),
    );
  }
}
