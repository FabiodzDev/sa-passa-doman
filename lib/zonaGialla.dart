import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sapassadoman/zonaBlu.dart';
import 'classeTestoZona.dart';

MappaGoogle mappa = MappaGoogle();

class paginaZonaGialla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Abazzea,+37040+Arcole+VR/@45.3567167,11.2796401,17z/data=!3m1!4b1!4m5!3m4!1s0x477f403323d62aef:0xa4940386954a901f!8m2!3d45.356713!4d11.2818288');},
                child: testoZona(testo: 'Abazzea')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Argine+Destro+Alpone,+37040+Arcole+VR/@45.3580475,11.2698153,17z/data=!3m1!4b1!4m5!3m4!1s0x477f41ce80807fe1:0xa5527b7e4fc1e5e5!8m2!3d45.3580438!4d11.272004');},
                child: testoZona(testo: 'Argine dx Alpone')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Borgoletto,+37040+Arcole+VR/@45.3556015,11.2859754,17z/data=!3m1!4b1!4m5!3m4!1s0x477f4032251d52bf:0xbdf4a33aff10fc21!8m2!3d45.3555978!4d11.2881641');},
                child: testoZona(testo: 'Borgoletto')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Cadenet,+37040+Arcole+VR/@45.3538128,11.2815264,17z/data=!3m1!4b1!4m5!3m4!1s0x477f402d9e798dcb:0x457b88bddb838315!8m2!3d45.3538091!4d11.2837151');},
                child: testoZona(testo: 'Cadenet')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Casamenti,+37040+Arcole+VR/@45.3602998,11.2827646,17z/data=!3m1!4b1!4m5!3m4!1s0x477f4034ebe7207f:0x696df5f1fb1d8b0!8m2!3d45.3602961!4d11.2849533');},
                child: testoZona(testo: 'Casamenti')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Cimitero,+37040+Arcole+VR/@45.3625744,11.2851107,17z/data=!3m1!4b1!4m5!3m4!1s0x477f4035a1cf68df:0xc3971daa7990fdb6!8m2!3d45.3625707!4d11.2872994');},
                child: testoZona(testo: 'Cimitero')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Cristoforo+Colombo,+37040+Arcole+VR/@45.3625744,11.2851107,17z/data=!4m5!3m4!1s0x477f403092dfe2bd:0xca4c1d719e97ab79!8m2!3d45.3565017!4d11.2923');},
                child: testoZona(testo: 'Colombo')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Cora,+37040+Arcole+VR/@45.351528,11.2855304,17z/data=!3m1!4b1!4m5!3m4!1s0x477f402f6738abf1:0x4dafd2eab1381915!8m2!3d45.3515243!4d11.2877191');},
                child: testoZona(testo: 'Cora')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Corte+di+Sotto,+37040+Arcole+VR/@45.3544828,11.2799557,17z/data=!3m1!4b1!4m5!3m4!1s0x477f402d5bc400b1:0x2cdf8362c7e73e35!8m2!3d45.3544791!4d11.2821444');},
                child: testoZona(testo: 'Corte di Sotto')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Crearo,+37040+Arcole+VR/@45.3612991,11.2807036,17z/data=!3m1!4b1!4m5!3m4!1s0x477f41cafca91e6b:0xba878de34068621c!8m2!3d45.3612954!4d11.2828923');},
                child: testoZona(testo: 'Crearo')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Don+Ferdinando+Tonin,+37040+Arcole+VR/@45.3660767,11.2834558,17z/data=!3m1!4b1!4m5!3m4!1s0x477f41b52b3de473:0xae9865020ffdace1!8m2!3d45.366073!4d11.2856445');},
                child: testoZona(testo: 'Don Ferdinando Tonin')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Don+Giovanni+Sbalchiero,+37040+Arcole+VR/@45.3611216,11.28808,17z/data=!3m1!4b1!4m5!3m4!1s0x477f4035d5ebe975:0x1481c3c2ef17ef90!8m2!3d45.3611179!4d11.2902687');},
                child: testoZona(testo: 'Don Giovanni Sbalchiero')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Estienne,+37040+Arcole+VR/@45.3544828,11.2799557,17z/data=!3m1!4b1!4m5!3m4!1s0x477f402d6347a1a1:0x11d3b0ddf56218b1!8m2!3d45.3544791!4d11.2821444');},
                child: testoZona(testo: 'Estienne')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Firenze,+37040+Arcole+VR/@45.3599249,11.2845951,17z/data=!3m1!4b1!4m5!3m4!1s0x477f403460f61183:0x7339520aa6a027b8!8m2!3d45.3599212!4d11.2867838');},
                child: testoZona(testo: 'Firenze')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Fornasa,+37040+Arcole+VR/@45.3532822,11.2795289,17z/data=!3m1!4b1!4m5!3m4!1s0x477f402d175d3c8d:0x93c39140a07552dc!8m2!3d45.3532785!4d11.2817176');},
                child: testoZona(testo: 'Fornasa')),
            testoZona(testo: 'Fornasa (Vicolo)'),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Friuli,+37040+Arcole+VR/@45.3572903,11.2884689,17z/data=!3m1!4b1!4m5!3m4!1s0x477f40310411d19f:0xd82edfaf12640074!8m2!3d45.3572866!4d11.2906576');},
                child: testoZona(testo: 'Friuli')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Garibaldi,+37040+Arcole+VR/@45.3572418,11.2831499,17z/data=!3m1!4b1!4m5!3m4!1s0x477f40333a670aa9:0x837e96ff498a937a!8m2!3d45.3572381!4d11.2853386');},
                child: testoZona(testo: 'Garibaldi')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Genova,+37040+Arcole+VR/@45.3604023,11.2848045,17z/data=!3m1!4b1!4m5!3m4!1s0x477f403444a96ac7:0xb66a377661f1a4df!8m2!3d45.3603986!4d11.2869932');},
                child: testoZona(testo: 'Genova')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Gorizia,+37040+Arcole+VR/@45.35893,11.286314,17z/data=!3m1!4b1!4m5!3m4!1s0x477f403408a15e65:0xf3965c9088b9751c!8m2!3d45.3589263!4d11.2885027');},
                child: testoZona(testo: 'Gorizia')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Malaspina,+37040+Arcole+VR/@45.35606,11.2803835,17z/data=!3m1!4b1!4m5!3m4!1s0x477f4032931374a5:0xdcc53fbafa4669a3!8m2!3d45.3560563!4d11.2825722');},
                child: testoZona(testo: 'Malaspina')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Mantovani,+37040+Arcole+VR/@45.3558193,11.2842625,17z/data=!3m1!4b1!4m5!3m4!1s0x477f403230833cbd:0x761c2e9a25f3e64f!8m2!3d45.3558156!4d11.2864512');},
                child: testoZona(testo: 'Mantovani')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Gen.+Guido+Mansoldo,+37040+Arcole+VR/@45.3580904,11.2846398,17z/data=!3m1!4b1!4m5!3m4!1s0x477f4033f4ad7705:0x692d8dbfa4b4d5a6!8m2!3d45.3580867!4d11.2868285');},
                child: testoZona(testo: 'G. Mansoldo')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Mazzini,+37040+Arcole+VR/@45.360697,11.2858316,17z/data=!3m1!4b1!4m5!3m4!1s0x477f403429c99dc9:0x96a8ccfea15b7427!8m2!3d45.3606933!4d11.2880203');},
                child: testoZona(testo: 'Mazzini')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Molinazzo,+37040+Arcole+VR/@45.3639068,11.2832654,17z/data=!3m1!4b1!4m5!3m4!1s0x477f404acba81921:0xe3ac93f916ad5f13!8m2!3d45.3639031!4d11.2854541');},
                child: testoZona(testo: 'Molinazzo')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Nogarole,+37040+Arcole+VR/@45.3590577,11.2881049,17z/data=!3m1!4b1!4m5!3m4!1s0x477f4036c7d88655:0xd3ea1995547f54e7!8m2!3d45.359054!4d11.2902936');},
                child: testoZona(testo: 'Nogarole')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Nuova,+37040+Arcole+VR/@45.3577397,11.2792438,17z/data=!3m1!4b1!4m5!3m4!1s0x477f41ccdd645347:0x8b0129ef8b03f924!8m2!3d45.357736!4d11.2814325');},
                child: testoZona(testo: 'Nuova')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Padovana,+37040+Arcole+VR/@45.3608504,11.2861831,17z/data=!3m1!4b1!4m5!3m4!1s0x477f4031cb3ba933:0x98a2ca820acf8644!8m2!3d45.3608467!4d11.2883718');},
                child: testoZona(testo: 'Padovana')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Pagnego,+37040+Arcole+VR/@45.3608504,11.2861831,17z/data=!4m5!3m4!1s0x477f403204c9da7f:0xca2b9875213164c4!8m2!3d45.3549921!4d11.2852088');},
                child: testoZona(testo: 'Pagnego')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.com/maps/place/Via+Pagnego,+37040+Arcole+VR/@45.3608504,11.2861831,17z/data=!4m5!3m4!1s0x477f403204c9da7f:0xca2b9875213164c4!8m2!3d45.3549921!4d11.2852088');},
                child: testoZona(testo: 'Vicolo Pagnego')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.it/maps/place/Via+Paradiso,+37040+Arcole+VR/@45.3562617,11.2884787,17z/data=!3m1!4b1!4m5!3m4!1s0x477f40310cab4579:0x7608cc7a2604e98f!8m2!3d45.356258!4d11.2906674?hl=it');},
                child: testoZona(testo: 'Paradiso')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.it/maps/place/Piazza+Marconi,+37040+Arcole+VR/@45.3578284,11.2841336,17z/data=!3m1!4b1!4m5!3m4!1s0x477f4033945e9bdf:0x75dbcf7b2a21c03f!8m2!3d45.3578247!4d11.2863223?hl=it');},
                child: testoZona(testo: 'Piazza Marconi')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.it/maps/place/Piazza+Poggi,+37040+Arcole+VR/@45.3587493,11.2829966,17z/data=!3m1!4b1!4m5!3m4!1s0x477f40337eaa659d:0x10f92e8b09b362af!8m2!3d45.3587723!4d11.2851031?hl=it');},
                child: testoZona(testo: 'Piazza Poggi')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.it/maps/place/Piazzale+G.Padovani/@45.3607688,11.2827846,17z/data=!3m1!4b1!4m5!3m4!1s0x477f403495aaa3f9:0x241f22f1e4228be1!8m2!3d45.3607651!4d11.2849733?hl=it');},
                child: testoZona(testo: 'Piazzale Padovani')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.it/maps/place/Via+Rialto,+37040+Arcole+VR/@45.3638981,11.2853732,17z/data=!3m1!4b1!4m5!3m4!1s0x477f40357e01699b:0x6222e2573e6714a1!8m2!3d45.3638944!4d11.2875619?hl=it');},
                child: testoZona(testo: 'Rialto')),
            GestureDetector(onTap: (){mappa.launchURL('');},
                child: testoZona(testo: 'Risorgimento (Vicolo)')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.it/maps/place/Via+Roma,+37040+Arcole+VR/@45.3580904,11.2846398,17z/data=!3m1!4b1!4m5!3m4!1s0x477f40315f12d62d:0x9929aa68f84dd929!8m2!3d45.3580867!4d11.2868285?hl=it');},
                child: testoZona(testo: 'Roma')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.it/maps/place/Via+Rosario,+37040+Arcole+VR/@45.356964,11.2781481,17z/data=!3m1!4b1!4m5!3m4!1s0x477f41cd41b19dc3:0x82ab9e10d609ac47!8m2!3d45.3569603!4d11.2803368?hl=it');},
                child: testoZona(testo: 'Rosario')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.it/maps/place/Via+Rovigo,+37040+Arcole+VR/@45.3605344,11.2878837,17z/data=!3m1!4b1!4m5!3m4!1s0x477f40369743a4a5:0x319f4ad832fbcbb4!8m2!3d45.3605307!4d11.2900724?hl=it');},
                child: testoZona(testo: 'Rovigo')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.it/maps/place/Via+S.+Antonio,+37040+Arcole+VR/@45.3622475,11.2838146,17z/data=!3m1!4b1!4m5!3m4!1s0x477f4035138d35ff:0x9ee53ac33e4931d4!8m2!3d45.3622438!4d11.2860033?hl=it');},
                child: testoZona(testo: 'S. Antonio')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.it/maps/place/Via+San+Giorgio,+37040+Arcole+VR/@45.356618,11.2818966,17z/data=!3m1!4b1!4m5!3m4!1s0x477f4032fc55dbc1:0x81c188fe26a4e52c!8m2!3d45.3566143!4d11.2840853?hl=it');},
                child: testoZona(testo: 'S. Giorgio')),
            GestureDetector(onTap: (){mappa.launchURL('');},
                child: testoZona(testo: 'S. Lorenzo')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.it/maps/place/Via+Sanguane,+37040+Arcole+VR/@45.3565641,11.2917389,17z/data=!3m1!4b1!4m5!3m4!1s0x477f403a5d7dae55:0x9db7fe61e16a19a6!8m2!3d45.3565604!4d11.2939276?hl=it');},
                child: testoZona(testo: 'Sanguane')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.it/maps/place/Via+Vincenzo+Todesco,+37040+Arcole+VR/@45.3570649,11.2895265,17z/data=!3m1!4b1!4m5!3m4!1s0x477f4030e8870d0b:0x945def62f26a8d84!8m2!3d45.3570612!4d11.2917152?hl=it');},
                child: testoZona(testo: 'Todesco')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.it/maps/place/Via+Trieste,+37040+Arcole+VR/@45.3573918,11.2905088,17z/data=!3m1!4b1!4m5!3m4!1s0x477f4030b7af9453:0x48ca6561f00bcf72!8m2!3d45.3573881!4d11.2926975?hl=it');},
                child: testoZona(testo: 'Trieste')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.it/maps/place/Via+Treviso,+37040+Arcole+VR/@45.3584043,11.2901569,17z/data=!3m1!4b1!4m5!3m4!1s0x477f4030c55cca83:0x17d6254a58f24f80!8m2!3d45.3584006!4d11.2923456?hl=it');},
                child: testoZona(testo: 'Treviso')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.it/maps/place/Via+Veneto,+37040+Arcole+VR/@45.3589229,11.290771,17z/data=!3m1!4b1!4m5!3m4!1s0x477f40372532a5f9:0x56683ee109163245!8m2!3d45.3589192!4d11.2929597?hl=it');},
                child: testoZona(testo: 'Veneto')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.it/maps/place/Via+Venezia,+37040+Arcole+VR/@45.3584043,11.2901569,17z/data=!3m1!4b1!4m5!3m4!1s0x477f403734d25f13:0x730a5dcd7e1ac53f!8m2!3d45.3584006!4d11.2923456?hl=it');},
                child: testoZona(testo: 'Venezia')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.it/maps/place/Via+Vicenza,+37040+Arcole+VR/@45.3587363,11.2915566,17z/data=!3m1!4b1!4m5!3m4!1s0x477f40374dbf24bd:0x28770bc69cc78b40!8m2!3d45.3587326!4d11.2937453?hl=it');},
                child: testoZona(testo: 'Vicenza')),
            GestureDetector(onTap: (){mappa.launchURL('https://www.google.it/maps/place/Via+XXV+Aprile,+37040+Arcole+VR/@45.3628192,11.28468,17z/data=!3m1!4b1!4m5!3m4!1s0x477f4035761a1475:0xd0dc6eeee25742ec!8m2!3d45.3628155!4d11.2868687?hl=it');},
                child: testoZona(testo: 'XXV Aprile')),




          ],
        ),
      );

  }
}

