import 'package:flutter/material.dart';

import 'giornirifiutiblu.dart';

class CalendarioCompletoBlu extends StatelessWidget {

  AbbinamentoGiorniRifiutiBLU giornorifiutoblu = AbbinamentoGiorniRifiutiBLU();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CALENDARIO ZONA BLU"),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            giornorifiutoblu.calendarioCompletoGiallo(),

          ],
        ),
      ),

    );
  }
}
