import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sapassadoman/pulsantiDiNavigazione.dart';
import 'menuDrawer.dart';
import 'classeTestoZona.dart';

class paginaZonaGialla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SA PASSA DOMAN'),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
      ),
      //drawer: menuDrawer(),
      body: SafeArea(
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.start,
         // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Center(
                child: Text(
                  'ZONA GIALLA: LE VIE',
                  style: TextStyle(
                    color: Colors.yellow.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 2,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  color: Colors.yellow[200],
                  borderRadius: BorderRadius.circular(
                      30) // da un arrotondamento agli spigoli
                  ),
            ),
            testoZona(testo: 'Abazzea'),
            testoZona(testo: 'Argine dx Alpone'),
            testoZona(testo: 'Argine dx Alpone'),
            testoZona(testo: 'Borgoletto'),
            testoZona(testo: 'Cadenet'),
            testoZona(testo: 'Casamenti'),
            testoZona(testo: 'Cimitero'),
            testoZona(testo: 'Colombo'),
            testoZona(testo: 'Cora'),
            testoZona(testo: 'Corte di Sotto'),
            testoZona(testo: 'Crearo'),
            testoZona(testo: 'Don Ferdinando Tonin'),
            testoZona(testo: 'Don Giovanni Sbalchiero'),
            testoZona(testo: 'Estienne'),
            testoZona(testo: 'Firenze'),
            testoZona(testo: 'Fornasa'),
            testoZona(testo: 'Vicolo Fornasa'),
            testoZona(testo: 'Friuli'),
            testoZona(testo: 'Garibaldi'),
            testoZona(testo: 'Genova'),
            testoZona(testo: 'Gorizia'),
            testoZona(testo: 'Malaspina'),
            testoZona(testo: 'Mantovani'),
            testoZona(testo: 'G. Mansoldo'),
            testoZona(testo: 'Mazzini'),
            testoZona(testo: 'Molinazzo'),
            testoZona(testo: 'Nogarole'),
            testoZona(testo: 'Nuova'),
            testoZona(testo: 'Padovana'),
            testoZona(testo: 'Pagnego'),
            testoZona(testo: 'Vicolo Pagnego'),
            testoZona(testo: 'Paradiso'),
            testoZona(testo: 'Piazza Marconi'),
            testoZona(testo: 'Piazza Poggi'),
            testoZona(testo: 'Piazzale Padovani'),
            testoZona(testo: 'Rialto'),
            testoZona(testo: 'Vicolo Risorgimento'),
            testoZona(testo: 'Roma'),
            testoZona(testo: 'Rosario'),
            testoZona(testo: 'Rovigo'),
            testoZona(testo: 'S. Antonio'),
            testoZona(testo: 'S. Giorgio'),
            testoZona(testo: 'S. Lorenzo'),
            testoZona(testo: 'Sanguane'),
            testoZona(testo: 'Todesco'),
            testoZona(testo: 'Trieste'),
            testoZona(testo: 'Treviso'),
            testoZona(testo: 'Veneto'),
            testoZona(testo: 'Venezia'),
            testoZona(testo: 'Vicenza'),
            testoZona(testo: 'XXV Aprile'),


          ],
        ),
      ),
      bottomNavigationBar: PulsantiDiNavigazione(),
    );
  }
}

