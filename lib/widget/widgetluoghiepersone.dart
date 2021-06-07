import 'package:flutter/material.dart';
import 'package:sapassadomantter/screen/luoghiepersone_dettaglio.dart';

class WidgetLuoghiePersone extends StatefulWidget {

  String titolox = " ";
  String urlimmagine = " ";
  String descrizione1luoghiepersone = " ";
  String descrizione2luoghiepersone = " ";

  WidgetLuoghiePersone({@required this.titolox, @required this.urlimmagine, @required this.descrizione1luoghiepersone, @required this.descrizione2luoghiepersone});


  @override
  _WidgetLuoghiePersoneState createState() => _WidgetLuoghiePersoneState();
}

class _WidgetLuoghiePersoneState extends State<WidgetLuoghiePersone> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        //Navigator.pop(context);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    LuoghiePersoneDettaglio(titoloLuoghiePersone: widget.titolox, urlimmagineLuoghiePersone: widget.urlimmagine, descrizione1LuoghiePersone: widget.descrizione1luoghiepersone, descrizione2LuoghiePersone: widget.descrizione2luoghiepersone)));
      },
      child: Container(
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
            child: Stack(
              children: <Widget>[
                Image.network(
                  "https://www.viviarcole.it/aa_spd_immagini/fotoluoghiepersone/${widget.urlimmagine}",
                  fit: BoxFit.cover,
                  width: 1000,
                  height: 150,
                ),
                            Positioned(
                              bottom: -7,
                              left: 0.0,
                              right: 0.0,
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color.fromARGB(0, 0, 0, 0),
                                      Color.fromARGB(0, 0, 0, 0)
                                    ],
                                    begin: Alignment.bottomRight,
                                    end: Alignment.bottomCenter,
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 20.0),
                                child: Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    widget.titolox,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
              ],
            )),
      ),
    );

  }
}
