import 'package:flutter/material.dart';

class WidgetElencoRifiuti extends StatelessWidget {
  String nome_rifiutox = " ";
  String destinazione_rifiutox = " ";

  WidgetElencoRifiuti(
      {@required this.nome_rifiutox, @required this.destinazione_rifiutox});

  @override

  Widget build(BuildContext context) {
    return Row(

      children: [
        Text(nome_rifiutox),
        Text(destinazione_rifiutox),
      ],
    );
  }
}
