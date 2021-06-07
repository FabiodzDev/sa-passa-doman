import 'package:flutter/material.dart';
import 'package:sapassadomantter/screen/evento_dettaglio.dart';

class WidgetEventi extends StatelessWidget {
  String citta = " ";
  String descrizionecitta = " ";
  String link = " ";
  String urlimmagine = " ";

  WidgetEventi(
      {@required this.citta,
      @required this.descrizionecitta,
      @required this.link,
      @required this.urlimmagine});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DettaglioEvento(
                      citta: citta,
                      link: link,
                    )));
      },
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://www.viviarcole.it/aa_spd_immagini/fotoluoghiepersone/${urlimmagine}"),
                    fit: BoxFit.cover),
                color: Colors.white,
                border: Border.all(

                    //color: Colors.pink[800], // Set border color
                    width: 0.0), // Set border width
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)), // Set rounded corner radius
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      child: Text(
                    citta,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 22),
                  )),
                  Container(
                      child: Text(
                    descrizionecitta,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 13),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
