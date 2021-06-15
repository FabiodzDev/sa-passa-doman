import 'package:flutter/material.dart';
import 'package:sapassadomantter/screen/luoghiepersone_dettaglio.dart';

class WidgetTutteLeImmagini extends StatelessWidget {

  String titolox;
  String urlimmagine;
  String descrizione1luoghiepersone;
  String descrizione2luoghiepersone;

  WidgetTutteLeImmagini({@required this.titolox, @required this.urlimmagine, @required this.descrizione1luoghiepersone, @required this.descrizione2luoghiepersone});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        //Navigator.pop(context);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    LuoghiePersoneDettaglio(titoloLuoghiePersone: titolox, urlimmagineLuoghiePersone: urlimmagine, descrizione1LuoghiePersone: descrizione1luoghiepersone, descrizione2LuoghiePersone: descrizione2luoghiepersone)));
      },
      child: Container(
        padding: EdgeInsets.only(left: 5, right: 5, bottom: 30),
        child: Column(
          children: [
            Text(titolox, style: TextStyle(fontSize: 18),),
            SizedBox(height: 10,),
            Image.network(
              "https://www.viviarcole.it/aa_spd_immagini/fotoluoghiepersone/${urlimmagine}",
              fit: BoxFit.cover,
              //width: 1000,
              //height: 170,
            ),
          ],
        ),

      ),
    );
  }
}



