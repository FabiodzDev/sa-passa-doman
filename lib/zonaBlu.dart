import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sapassadoman/pulsantiDiNavigazione.dart';
import 'menuDrawer.dart';
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
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.it/maps/place/Via+Alzana,+37040+Macia+VR/@45.3746,11.2833218,17z/data=!3m1!4b1!4m5!3m4!1s0x477f41adb7e438bf:0x1bc3859fb30c680b!8m2!3d45.3745963!4d11.2855105?hl=it');
              },
              child: testoZona(testo: 'Alzana')),
          GestureDetector(
            onTap: () {
              mappa.launchURL(
                  'https://www.google.it/maps/place/Via+Belvedere,+37040+Arcole+VR/@45.3717431,11.2966375,17z/data=!3m1!4b1!4m5!3m4!1s0x477f404e65937a33:0xf2428a358792fabc!8m2!3d45.3717394!4d11.2988262?hl=it');
            },
            child: testoZona(testo: 'Belvedere'),
          ),
          GestureDetector(
            onTap: () {
              mappa.launchURL(
                  'https://www.google.com/maps/search/Via+Attilio+Bernardi,+Arcole,+VR/@45.3823328,11.3091096,17z/data=!3m1!4b1');
            },
            child: testoZona(testo: 'Bernardi'),
          ),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Bevilacqua,+37040+Volpino+VR/@45.3773594,11.3166761,17z/data=!3m1!4b1!4m5!3m4!1s0x477f4061ea946811:0xa2e627ccf636d6bc!8m2!3d45.3773557!4d11.3188648');
              },
              child: testoZona(testo: 'Bevilacqua')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Bruso,+37040+Arcole+VR/@45.3464999,11.3218157,17z/data=!3m1!4b1!4m5!3m4!1s0x477f3ff9790fde2d:0xd0935d62b0b18887!8m2!3d45.3464962!4d11.3240044');
              },
              child: testoZona(testo: 'Bruso')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Capitello,+37040+Arcole+VR/@45.3818487,11.3157104,17z/data=!3m1!4b1!4m5!3m4!1s0x477f40f4d118bbb9:0x919ec8a598b554ea!8m2!3d45.381845!4d11.3178991');
              },
              child: testoZona(testo: 'Capitello')),
          testoZona(testo: '*** Carrarola'),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Casalveghe,+Gazzolo+VR/@45.3850332,11.3078807,17z/data=!3m1!4b1!4m5!3m4!1s0x477f40f944d2df89:0x4e09400f2b82b38f!8m2!3d45.3850295!4d11.3100694');
              },
              child: testoZona(testo: 'Casalveghe')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Chiesa,+37040+Arcole+VR/@45.3813159,11.3111041,17z/data=!3m1!4b1!4m5!3m4!1s0x477f40f5061d47b9:0x8dd94483fda7eb30!8m2!3d45.3813122!4d11.3132928');
              },
              child: testoZona(testo: 'Chiesa')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/search/Via+Comparine,+Arcole,+VR/@45.3524739,11.2955254,17z/data=!3m1!4b1');
              },
              child: testoZona(testo: 'Comparine')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Crocette+di+Sopra,+37040+Crocette+di+Sopra+VR/@45.368505,11.3034325,17z/data=!3m1!4b1!4m5!3m4!1s0x477f4043997e8ccb:0xd3fdfa3423c74cb3!8m2!3d45.3685013!4d11.3056212');
              },
              child: testoZona(testo: 'Crocette di sopra')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Crocette+di+Sotto,+37040+Arcole+VR/@45.3600854,11.3021631,17z/data=!3m1!4b1!4m5!3m4!1s0x477f40419a83b4c5:0x9166ba627bfbf360!8m2!3d45.3600817!4d11.3043518');
              },
              child: testoZona(testo: 'Crocette di sotto')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Crosara,+37040+Volpino+VR/@45.3797934,11.3248414,17z/data=!3m1!4b1!4m5!3m4!1s0x477f4087762c0d2f:0xc80cdfb7c61decc5!8m2!3d45.3797897!4d11.3270301');
              },
              child: testoZona(testo: 'Crosara')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+degli+Alpini,+37040+Gazzolo+VR/@45.3843897,11.3070343,17z/data=!3m1!4b1!4m5!3m4!1s0x477f40f6c1ae0951:0xb274072e804b812b!8m2!3d45.384386!4d11.309223');
              },
              child: testoZona(testo: 'Degli Alpini')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+dell\'Artigianato,+37040+Volpino+VR/@45.3811751,11.3149076,17z/data=!3m1!4b1!4m5!3m4!1s0x477f408af57406c7:0x11d1eb99627a5383!8m2!3d45.3811714!4d11.3170963');
              },
              child: testoZona(testo: 'Dell’Artigianato')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Viale+del+Lavoro,+37040+Macia+VR/@45.3720161,11.2810619,17z/data=!3m1!4b1!4m5!3m4!1s0x477f41b258818739:0xbbc8bfb995caca1c!8m2!3d45.3720124!4d11.2832506');
              },
              child: testoZona(testo: 'Del Lavoro')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Don+Pietro+Cozza,+37040+Arcole+VR/@45.376668,11.3129689,17z/data=!3m1!4b1!4m5!3m4!1s0x477f405e266766b5:0x99df6113adcbd341!8m2!3d45.3766643!4d11.3151576');
              },
              child: testoZona(testo: 'Don Pietro Cozza')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Az.Agr.Benini+Mattia/@45.3759745,11.2855055,17z/data=!4m5!3m4!1s0x477f4100e8bbb5f9:0xc39d88a6c045a1ea!8m2!3d45.3756467!4d11.287544');
              },
              child: testoZona(testo: 'Grassanella')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/search/Via+Padovana+Nuova,+Arcole,+VR/@45.356988,11.2868567,15z/data=!3m1!4b1');
              },
              child: testoZona(testo: 'La Padovana Nuova SP7')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Lepanto,+37040+Arcole+VR/@45.3800322,11.3272499,17z/data=!3m1!4b1!4m5!3m4!1s0x477f4087a6d6bd25:0xd8fcc43e4144314e!8m2!3d45.3800285!4d11.3294386');
              },
              child: testoZona(testo: 'Lepanto')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Macia,+37040+Arcole+VR/@45.370108,11.2840243,17z/data=!3m1!4b1!4m5!3m4!1s0x477f41b33e434cdd:0xaaa7c59bd963b19!8m2!3d45.3701043!4d11.286213');
              },
              child: testoZona(testo: 'Macia')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Madre+Teresa+di+Calcutta,+37040+Arcole+VR/@45.3758997,11.3143233,17z/data=!3m1!4b1!4m5!3m4!1s0x477f4060df39ad27:0x329e808e66bccd03!8m2!3d45.375896!4d11.316512');
              },
              child: testoZona(testo: 'Madre Teresa di Calcutta')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Marezzane+di+Sopra,+37040+Marezzane+di+Sopra+VR/@45.3679847,11.3158844,17z/data=!3m1!4b1!4m5!3m4!1s0x477f406f27456f27:0x1fc0081c344c0d76!8m2!3d45.367981!4d11.3180731');
              },
              child: testoZona(testo: 'Marezzane di Sopra')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/@45.3679847,11.3158844,17z');
              },
              child: testoZona(testo: 'Marezzane di Sotto')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/@45.3679847,11.3158844,17z');
              },
              child: testoZona(testo: 'Mariotto Gino')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/@45.3679847,11.3158844,17z');
              },
              child: testoZona(testo: 'Motte Crosaron')),
          GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/@45.3679847,11.3158844,17z');},
              child: testoZona(testo: 'Motte Godi')),
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
