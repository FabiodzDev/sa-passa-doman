import 'package:flutter/material.dart';

class testoZona extends StatelessWidget {

  String testo;

  testoZona({@required this.testo});

  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.only(top: 7, left: 15, right: 15), child: Text(testo, style: TextStyle(fontSize: 20),));
  }
}

