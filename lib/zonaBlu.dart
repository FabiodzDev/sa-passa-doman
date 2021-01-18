import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'classeTestoZona.dart';
import 'package:url_launcher/url_launcher.dart';

MappaGoogle mappa = MappaGoogle();

class paginaZonaBlu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        //mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Center(
              child: Text(
                'ZONA BLU: LE VIE',
                style: TextStyle(
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: 2,
                ),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.circular(
                    30) // da un arrotondamento agli spigoli
                ),
          ),
          testoZona(testo: 'Alzana'),
          testoZona(testo: 'Belvedere'),
          testoZona(testo: 'Bernardi'),
          testoZona(testo: 'Bevilacqua'),
          testoZona(testo: 'Bruso'),
          testoZona(testo: 'Capitello'),
          testoZona(testo: 'Carrarola'),
          testoZona(testo: 'Casalveghe'),
          testoZona(testo: 'Chiesa'),
          testoZona(testo: 'Comparine'),
          testoZona(testo: 'Crocette di sopra'),
          testoZona(testo: 'Crocette di sotto'),
          testoZona(testo: 'Crosara'),
          testoZona(testo: 'Degli Alpini'),
          testoZona(testo: 'Dell’Artigianato'),
          testoZona(testo: 'Del Lavoro'),
          testoZona(testo: 'Don Pietro Cozza'),
          testoZona(testo: 'Grassanella'),
          testoZona(testo: 'La Padovana Nuova SP7'),
          testoZona(testo: 'Lepanto'),
          testoZona(testo: 'Macia'),
          testoZona(testo: 'Madre Teresa di Calcutta'),
          testoZona(testo: 'Marezzane di Sopra'),
          testoZona(testo: 'Marezzane di Sotto'),
          testoZona(testo: 'Mariotto Gino'),
          testoZona(testo: 'Motte Crosaron'),
          testoZona(testo: 'Motte Godi'),
          testoZona(testo: 'Motte'),
          testoZona(testo: 'Motte di sopra'),
          testoZona(testo: 'Motte Rossini'),
          testoZona(testo: 'Orionda'),
          testoZona(testo: 'Padre Mario Boggiani'),
          testoZona(testo: 'Pausella'),
          testoZona(testo: 'Piazza del Donatore'),
          testoZona(testo: 'Piazza Gazzolo'),
          testoZona(testo: 'Rovere'),
          testoZona(testo: 'Ruffo Gianni Augusto'),
          testoZona(testo: 'Salvarolo'),
          testoZona(testo: 'Salvo d’Acquisto'),
          testoZona(testo: 'San Giuseppe Lavoratore ex G. Mansoldo'),
          testoZona(testo: 'San Marco'),
          testoZona(testo: 'Selva'),
          testoZona(testo: 'Trento'),
          testoZona(testo: 'Valle'),
          testoZona(testo: 'Verdi'),
          testoZona(testo: 'XIII Maggio'),
        ],
      ),
    );
  }
}

class MappaGoogle {
  String url;

  MappaGoogle();

  launchURL(String url) async {
    // const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
