import 'package:flutter/material.dart';
import 'giornirifiuti.dart';

class CalendarioCompletoGiallo extends StatelessWidget {

  AbbinamentoGiorniRifiuti giornorifiutogiallo = AbbinamentoGiorniRifiuti();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CALENDARIO ZONA GIALLA"),
        centerTitle: true,
        backgroundColor: Colors.yellow[700],
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            giornorifiutogiallo.calendarioCompletoGiallo(),

          ],
        ),
      ),

    );
  }
}
