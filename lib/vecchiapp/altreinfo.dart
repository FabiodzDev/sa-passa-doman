import 'package:flutter/material.dart';

class AltreInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ALTRE INFO'),
          centerTitle: true,
          backgroundColor: Colors.blue[700],
        ),
        body: Container(
          padding: EdgeInsets.only(right: 15, left: 15),
          color: Colors.white,
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),

              Container(
                color: Colors.white,
                child: Text(
                  "Ulteriori utili informazioni da ricordare:",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                child: Text(
                  '- L\'ESPOSIZIONE DEI RIFIUTI DOVRA\' ESSERE FATTA DI FRONTE ALLA PROPRIA ABITAZIONE A PARTIRE DALLE ORE 21.00 DEL GIORNO PRIMA RISPETTO AL GIORNO INDICATO NEL CALENDARIO.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                child: Text(
                  '- NON UTILIZZARE MAI SACCHETTI NERI.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                color: Colors.white,
                child: SizedBox(
                  height: 25,
                ),
              ),



            ],),
        ));
  }
}
