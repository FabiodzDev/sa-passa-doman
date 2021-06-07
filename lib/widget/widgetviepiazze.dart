import 'package:flutter/material.dart';


class WidgetViePiazze extends StatelessWidget {

  String nomeVia = " ";
  String nomeZona = " ";

  WidgetViePiazze({@required this.nomeVia, @required this.nomeZona});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Row(
        children: [
          Container(
              padding: EdgeInsets.only(left: 10),
              width: 170,
              child: Text("$nomeVia", style: TextStyle(fontSize: 15))),
          SizedBox(width: 20,),
          Text("$nomeZona", style: TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}
