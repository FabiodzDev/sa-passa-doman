import 'package:flutter/material.dart';

class WidgetEventi extends StatelessWidget {

  String citta;
  String link;
  String urlimmagine;

  WidgetEventi({@required this.citta, @required this.link, @required this.urlimmagine});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 150,
          ),
          Column(
            children: [
              Container(child: Text(citta, style: TextStyle(fontSize: 20),)),
            ],
          ),
        ],
      ),
    );
  }
}
