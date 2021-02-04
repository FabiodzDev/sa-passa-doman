import 'package:flutter/material.dart';

class Informazioni extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('INFORMAZIONI'),
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
              "SA PASSA DOMAN è un'applicazione creata a titolo gratuito con lo scopo di offrire ai nostri compaesani di ARCOLE un servizio in più nella raccolta dei rifiuti, monitorando quindi anche tramite smartphone i giorni della raccolta differenziata. ",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              "Ci teniamo a precisare che non è l'applicazione ufficiale né della società che gestisce la raccolta differenziata né del Comune di Arcole e che quindi non ci teniamo responsabili per eventuali errori, nonostante cercheremo di prestare sempre la massima attenzione.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              "PER LE INFORMAZIONI UFFICIALI FATE AFFIDAMENTO AL SITO DEL COMUNE DI ARCOLE",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800 ),
            ),
          ),
          Container(
            child: Text(
              "www.comunediarcole.it",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800 ),
            ),
          )


        ],
      ),
    )
    );
  }
}
