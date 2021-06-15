import 'package:flutter/material.dart';

class WidgetNumeroAvvisi extends StatelessWidget {

  String numeroavvisi = " ";

  WidgetNumeroAvvisi({@required this.numeroavvisi });

  @override
  Widget build(BuildContext context) {
    return Container(

        child: Text(numeroavvisi, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700), ));
  }
}
