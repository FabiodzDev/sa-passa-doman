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
          testoZona(testo: 'Carrarola'),
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
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/@45.3679847,11.3158844,17z');
              },
              child: testoZona(testo: 'Motte Godi')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Motte,+37040+Arcole+VR/@45.3720212,11.3170147,17z/data=!3m1!4b1!4m5!3m4!1s0x477f40668225a399:0xd1e3732de5a8a830!8m2!3d45.3720212!4d11.3192034');
              },
              child: testoZona(testo: 'Motte')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Motte+di+Sopra,+37040+Gazzolo+VR/@45.374493,11.3104649,17z/data=!3m1!4b1!4m5!3m4!1s0x477f406757f796dd:0x499ac1aa45fcbe27!8m2!3d45.374493!4d11.3126536');
              },
              child: testoZona(testo: 'Motte di sopra')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Motte+Rossini,+37040+Gazzolo+VR/@45.3754198,11.3120151,17z/data=!3m1!4b1!4m5!3m4!1s0x477f4060d22cee99:0x88a649130ae93037!8m2!3d45.3754198!4d11.3142038');
              },
              child: testoZona(testo: 'Motte Rossini')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Orionda,+37040+Volpino+VR/@45.3768855,11.3273532,17z/data=!3m1!4b1!4m5!3m4!1s0x477f40877a3528d1:0x28cebd04b981f988!8m2!3d45.3768855!4d11.3295419');
              },
              child: testoZona(testo: 'Orionda')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Padre+Mario+Boggiani,+37040+Arcole+VR/@45.3770587,11.3134428,17z/data=!3m1!4b1!4m5!3m4!1s0x477f4060edccffa9:0x9c63519d9b920cac!8m2!3d45.3770587!4d11.3156315');
              },
              child: testoZona(testo: 'Padre Mario Boggiani')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Pausella,+37040+Arcole+VR/@45.3708894,11.3112299,17z/data=!3m1!4b1!4m5!3m4!1s0x477f4067b57136c1:0x3a157627887a1026!8m2!3d45.3708894!4d11.3134186');
              },
              child: testoZona(testo: 'Pausella')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Piazza+Del+Donatore/@45.3766356,11.3096604,17z/data=!3m1!4b1!4m5!3m4!1s0x477f405e427a111b:0x63b440ffd76afeed!8m2!3d45.3766356!4d11.3118491');
              },
              child: testoZona(testo: 'Piazza del Donatore')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Piazza+Gazzolo,+37040+Gazzolo+VR/@45.3779623,11.3103602,17z/data=!3m1!4b1!4m5!3m4!1s0x477f405e48ea2951:0x9dacd134e4e9ecbb!8m2!3d45.3779623!4d11.3125489');
              },
              child: testoZona(testo: 'Piazza Gazzolo')),
          testoZona(testo: 'Rovere'),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Avv.+Gianni+Augusto+Ruffo,+37040+Arcole+VR/@45.3727132,11.2887034,17z/data=!3m1!4b1!4m5!3m4!1s0x477f404dbe36032b:0xe72a207a36af68c4!8m2!3d45.3727132!4d11.2908921');
              },
              child: testoZona(testo: 'Ruffo Gianni Augusto')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Salvarolo,+37040+Arcole+VR/@45.3590589,11.2994373,17z/data=!3m1!4b1!4m5!3m4!1s0x477f4039d108c86b:0x4c4653e987412513!8m2!3d45.3590589!4d11.301626');
              },
              child: testoZona(testo: 'Salvarolo')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Salvo+D\'Acquisto,+37040+Arcole+VR/@45.3828192,11.3091323,17z/data=!3m1!4b1!4m5!3m4!1s0x477f40f4354053c1:0x161b4177e94e5bb0!8m2!3d45.3828192!4d11.311321');
              },
              child: testoZona(testo: 'Salvo d’Acquisto')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+S.+Giuseppe+Lavoratore,+37040+Arcole+VR/@45.3715792,11.2884012,17z/data=!3m1!4b1!4m5!3m4!1s0x477f404d6ab4caf7:0xb95e855d3f838a7b!8m2!3d45.3715792!4d11.2905899');
              },
              child:
                  testoZona(testo: 'San Giuseppe Lavoratore ex G. Mansoldo')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+San+Marco,+37040+Arcole+VR/@45.375896,11.3143233,17z/data=!3m1!4b1!4m5!3m4!1s0x477f406146d5427d:0xbcedf7e38b747ab!8m2!3d45.375896!4d11.316512');
              },
              child: testoZona(testo: 'San Marco')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Selva,+Gazzolo+VR/@45.3850369,11.3130753,17z/data=!3m1!4b1!4m5!3m4!1s0x477f40f320d270ed:0xff59beaf03a5739e!8m2!3d45.3850369!4d11.315264');
              },
              child: testoZona(testo: 'Selva')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Trento,+37040+Gazzolo+VR/@45.3837444,11.3082793,17z/data=!3m1!4b1!4m5!3m4!1s0x477f40f68f91bc55:0xe9017ea5858e4257!8m2!3d45.3837444!4d11.310468');
              },
              child: testoZona(testo: 'Trento')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Valle,+37040+Arcole+VR/@45.352779,11.307047,17z/data=!3m1!4b1!4m5!3m4!1s0x477f4017cb41813d:0xfcbc8c291103fb4a!8m2!3d45.352779!4d11.3092357');
              },
              child: testoZona(testo: 'Valle')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+Giuseppe+Verdi,+37040+Arcole+VR/@45.3809597,11.3234375,17z/data=!3m1!4b1!4m5!3m4!1s0x477f40885eb23dcf:0xafd8d8db9607b8d7!8m2!3d45.3809597!4d11.3256262');
              },
              child: testoZona(testo: 'Verdi')),
          GestureDetector(
              onTap: () {
                mappa.launchURL(
                    'https://www.google.com/maps/place/Via+XIII+Maggio,+37040+Volpino+VR/@45.381434,11.3249618,17z/data=!3m1!4b1!4m5!3m4!1s0x477f40886efbf2cf:0xbdeeda272b0b2a6b!8m2!3d45.381434!4d11.3271505');
              },
              child: testoZona(testo: 'XIII Maggio')),
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
