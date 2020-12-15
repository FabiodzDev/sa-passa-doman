import 'package:flutter/material.dart';
import 'package:sapassadoman/home.dart';
import 'package:sapassadoman/zonaGialla.dart';
import 'package:sapassadoman/zonaBlu.dart';

import 'main.dart';



class PulsantiDiNavigazione extends StatefulWidget {



  @override
  _PulsantiDiNavigazioneState createState() => _PulsantiDiNavigazioneState();
}

class _PulsantiDiNavigazioneState extends State<PulsantiDiNavigazione> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,    // 0 è attivo di standard il primo bottone.
        backgroundColor: Colors.white,
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
      onTap: (index){
        setState(() {
          currentIndex = index;
        });
      }
    );
  }
}