import 'package:flutter/material.dart';

class WidgetCentroDiRaccolta extends StatelessWidget {
  String indirizzo = " ";
  String orario = " ";
  String note = " ";
  String immagine = " ";

  WidgetCentroDiRaccolta(
      {@required this.indirizzo,
      @required this.orario,
      @required this.note,
      @required this.immagine});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            child: Image.network(immagine),
          ),
          Container(
            padding: EdgeInsets.only(top: 12),
            child: Text("INDIRIZZO", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),textAlign: TextAlign.center,),
          ) ,

          Container(
              padding: EdgeInsets.only(top: 12, left: 8, right: 8),
              child: Row(
                children: [
                  Text(indirizzo,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.justify),
                  Expanded(child: SizedBox())
                ],
              )),
          SizedBox(height: 15,) ,
          Container(
              padding: EdgeInsets.only(top: 12),
              child: Text("ORARIO", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),textAlign: TextAlign.center,),


          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 8, right: 8),
            child: Text(
              orario,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.justify,
            ),
          ),
          Text(note),
        ],
      ),
    );
  }
}
