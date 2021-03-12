import 'package:flutter/material.dart';

class CentroRifiuti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CENTRO DI RACCOLTA RIFIUTI'),
          centerTitle: true,
          backgroundColor: Colors.blue[700],
        ),
        body: SafeArea(
          child: ListView(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'images/casa.jpg',
                    ),
                    fit: BoxFit.contain,
                  ),
                  color: Colors.white,
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Il centro di raccolta rifiuti urbani per utenze domestiche si trova in: ",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Center(
                      child: Text(
                    "VIA PAUSELLA a GAZZOLO D'ARCOLE",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ))),
              SizedBox(
                height: 25,
              ),
              Center(
                  child: Text(
                "Orari di apertura:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              )),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(right: 15, left: 15, top: 5),
                child: Text(
                  '- Mercoledì dalle 14.00 alle 17.00 (escluso giorni festivi).',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    EdgeInsets.only(right: 15, left: 15, top: 5, bottom: 15),
                child: Text(
                  '- Sabato dalle 09.00 alle 12.00 e dalle 14.00 alle 17.00 (escluso giorni festivi).',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ));
  }
}
