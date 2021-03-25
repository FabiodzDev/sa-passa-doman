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
          child: Container(
            padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: ListView(
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'images/centrorac.jpg',
                      ),
                      fit: BoxFit.contain,
                    ),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Text(
                    "Il centro di raccolta rifiuti urbani per utenze domestiche si trova in: ",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    child: Center(
                        child: Text(
                      "VIA PAUSELLA a GAZZOLO D'ARCOLE",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
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
          ),
        ));
  }
}
