import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sapassadoman/pulsantiDiNavigazione.dart';

class paginaZonaGialla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SA PASSA DOMAN'),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
            Container(
              padding: EdgeInsets.only(left: 30, right: 30, bottom: 10),
              child: Text(
                'Abazzea - Argine dx Alpone - Bologna - Borgoletto - Cadenet - Casamenti - Cimitero - Colombo - Cora - Corte di Sotto - Crearo - Don Ferdinando Tonin - Don Giovanni Sbalchiero - Estienne -Firenze - Fornasa - Vicolo Fornasa - Friuli - Garibaldi - Genova - Gorizia - Malaspina - Mantovani - G. Mansoldo - Mazzini - Molinazzo - Nogarole - Nuova - Padovana - Pagnego - Vicolo Pagnego - Paradiso - Piazza Marconi - Piazza Poggi - Piazzale Padovani - Rialto - Vicolo Risorgimento -Roma - Rosario - Rovigo - S. Antonio - S. Giorgio - S. Lorenzo - Sanguane - Todesco - Trieste -Treviso - Veneto - Venezia - Vicenza - XXV Aprile',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: PulsantiDiNavigazione(),
    );
  }
}
