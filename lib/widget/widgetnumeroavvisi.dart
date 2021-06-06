import 'package:flutter/material.dart';

class WidgetNumeroAvvisi extends StatelessWidget {

  String numeroavvisi;

  WidgetNumeroAvvisi({@required this.numeroavvisi });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(right: 10, top: 10),
        child: Text(numeroavvisi, style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.w700), ));
  }
}
