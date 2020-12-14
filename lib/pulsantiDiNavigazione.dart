import 'package:flutter/material.dart';



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
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: "Home",
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
          ),
          label: "Setting",
          backgroundColor: Colors.yellowAccent,

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