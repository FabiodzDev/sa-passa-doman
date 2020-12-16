import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sapassadoman/tiporifiuti.dart';


class rifiuti extends StatefulWidget {
  @override
  _rifiutiState createState() => _rifiutiState();
}

class _rifiutiState extends State<rifiuti> {

  ElencoRifiuti elencoRifiutx = ElencoRifiuti();

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child:  Container(
        child: ListView(
          children: [
            elencoRifiutx.mostraTuttiRifiuti()

          ],
        )
      ),
    );

  }
}


NomeRifiuto nomeRifiuto = NomeRifiuto();

class generaElencoRifiuti {

  String descrizioneRifiuto;
  String tipoRifiuto;

  generaElencoRifiuti ({@required this.descrizioneRifiuto, @required this.tipoRifiuto});

}

class ElencoRifiuti {

  List <generaElencoRifiuti> tuttiIRifiuti =  [

    generaElencoRifiuti(descrizioneRifiuto: 'Agende', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(descrizioneRifiuto: 'Album da disegno', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(descrizioneRifiuto: 'Calendari', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(descrizioneRifiuto: 'Cartone in tetrapak per bevande (es. latte)', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(descrizioneRifiuto: 'Depliant', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(descrizioneRifiuto: 'Fogli', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(descrizioneRifiuto: 'Fotocopie', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(descrizioneRifiuto: 'Fumetti', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(descrizioneRifiuto: 'Giornali', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(descrizioneRifiuto: 'Imballaggi in cartone ondulato', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(descrizioneRifiuto: 'Libri', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(descrizioneRifiuto: 'Quaderni', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(descrizioneRifiuto: 'Riviste', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(descrizioneRifiuto: 'Sacchetti di carta puliti', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(descrizioneRifiuto: 'Scatole detersivi', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(descrizioneRifiuto: 'Scatole in carta per alimenti', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(descrizioneRifiuto: 'Scatole in cartoncino per pasta', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(descrizioneRifiuto: 'Scatola per scarpe', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(descrizioneRifiuto: 'Scatola pizza', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(descrizioneRifiuto: 'Tovaglioli di carta puliti', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(descrizioneRifiuto: 'Volantini pubblicitari', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),

    generaElencoRifiuti(descrizioneRifiuto: 'Attaccapanni', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(descrizioneRifiuto: 'Bombolette spry no T/F', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(descrizioneRifiuto: 'Bottiglie in plastica (acqua e bibite varie)', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(descrizioneRifiuto: 'Coperchi barattoli yogurt', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(descrizioneRifiuto: 'Flaconi in plastica di detergenti/detersivi', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(descrizioneRifiuto: 'Foglio in alluminio per alimenti', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(descrizioneRifiuto: 'Lattine di bevande', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(descrizioneRifiuto: 'Moka per il caffè', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(descrizioneRifiuto: 'Pellicola in nylon', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(descrizioneRifiuto: 'Pentole e padelle', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(descrizioneRifiuto: 'Piatti e bicchieri in plastica monouso', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(descrizioneRifiuto: 'Sacchetti per il caffè', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(descrizioneRifiuto: 'Scatolette e barattoli per alimenti', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(descrizioneRifiuto: 'Tappi di bottiglie di olio', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(descrizioneRifiuto: 'Tubetti di dentrificio e similari', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(descrizioneRifiuto: 'Tubetti contenenti conserve', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(descrizioneRifiuto: 'Vaschette in alluminio', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(descrizioneRifiuto: 'Vaschette in plastica', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(descrizioneRifiuto: 'Vaschette in polistirolo', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(descrizioneRifiuto: 'Vasetti di yogurt in plastica ', tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),




  ];

  Widget mostraTuttiRifiuti () {

    List<Widget> elenco = List<Widget>();


    for (var i = 0; i < tuttiIRifiuti.length; i++) {

      IconData icona = Icons.add;
      Color coloreIcona = Colors.blue[200];

      if (tuttiIRifiuti[i].tipoRifiuto == nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) ) {
        icona = Icons.nature;
        coloreIcona = Colors.brown.shade700;
      }

      if (tuttiIRifiuti[i].tipoRifiuto == nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) ) {
        icona = Icons.adjust;
        coloreIcona = Colors.blueGrey.shade700;
      }

      elenco.add(
        Container(
          child: ListTile(
            leading: Icon(
              icona,
              size: 30,
              color: coloreIcona,
            ),
            title: Text(
              tuttiIRifiuti[i].descrizioneRifiuto,
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Text(tuttiIRifiuti[i].tipoRifiuto, style: TextStyle(fontSize: 17),),
          ),
        ),
      );

    }

    return Column(children: elenco);
  }


}

