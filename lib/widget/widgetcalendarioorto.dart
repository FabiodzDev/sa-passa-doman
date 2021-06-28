import 'package:flutter/material.dart';

class WidgetCalendarioOrto extends StatelessWidget {
  String mese_semina = " ";
  String tipo_semina = " ";
  String luna = " ";
  String cosa_seminaree = " ";

  WidgetCalendarioOrto(
      {@required this.mese_semina,
      @required this.tipo_semina,
      @required this.luna,
      @required this.cosa_seminaree});

  Color coloreContainerLunca(luna){
    if (luna == " "){
      return Colors.white;
    } else {
      return Colors.blue.shade500;
    }

  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 12, left: 12, right: 10, bottom: 10),
                  color: Colors.blue.shade900,
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: Text(mese_semina, style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top: 12, left: 12, right: 10, bottom: 10),
                    color: coloreContainerLunca(luna),

                    height: 50,
                    //width: MediaQuery.of(context).size.width * 0.45,
                    child: Text(luna, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 12, left: 10, right: 10, bottom: 10),
              color: Colors.blue.shade100,
              height: 50,
              width: double.infinity,

              child: Text(tipo_semina, textAlign: TextAlign.left, style: TextStyle(fontSize: 20, color: Colors.blue.shade900),),
              //width: MediaQuery.of(context).size.width * 0.45,

            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Text(cosa_seminaree, textAlign: TextAlign.justify, style: TextStyle(fontSize: 18),),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              color: Colors.blue.shade900,
              thickness: 2,
            )
          ],
        ));
  }
}
