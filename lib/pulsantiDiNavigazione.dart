import 'package:flutter/material.dart';



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