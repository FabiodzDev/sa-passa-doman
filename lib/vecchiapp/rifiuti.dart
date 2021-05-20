import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sapassadomantter/vecchiapp/tiporifiuti.dart';

class Rifiuti extends StatefulWidget {
  @override
  _RifiutiState createState() => _RifiutiState();
}

class _RifiutiState extends State<Rifiuti> {

  ElencoRifiuti elencoRifiutx = ElencoRifiuti();
  String parolaDaCercare;
  String parolaScritta;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Scrivi il rifiuto',
              labelText: 'Casella di ricerca',
              border: const OutlineInputBorder(),
            ),
            onChanged: (parolaDaCercare) {
              print(parolaDaCercare);
              setState(() {
                parolaScritta = parolaDaCercare;
              });
            },
          ),
          elencoRifiutx.mostraTuttiRifiuti(parolaScritta)
        ],
      )),
    );
  }
}

NomeRifiuto nomeRifiuto = NomeRifiuto();

class generaElencoRifiuti {
  String descrizioneRifiuto;
  String tipoRifiuto;

  generaElencoRifiuti(
      {@required this.descrizioneRifiuto, @required this.tipoRifiuto});
}

class ElencoRifiuti {
  List<generaElencoRifiuti> tuttiIRifiuti = [
    generaElencoRifiuti(
        descrizioneRifiuto: 'Agende',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Album da disegno',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Calendari',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Cartone in tetrapak per bevande (es. latte)',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Cartoncini',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Depliant',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Fogli',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Fotocopie',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Fumetti',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Giornali',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Imballaggi in cartone ondulato',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Libri',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Quaderni',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Pieghevoli pubblicitari',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Poster',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Riviste',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Sacchetti di carta puliti',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Scatole detersivi',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Scatole in carta per alimenti',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Scatole in cartoncino per pasta, ecc.',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Scatola per scarpe',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Scatola pizza',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Tovaglioli di carta puliti',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Volantini pubblicitari',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Attaccapanni in plastica',
        tipoRifiuto:
            nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Bombolette spry no T/F',
        tipoRifiuto:
            nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Bottiglie in plastica (acqua e bibite varie)',
        tipoRifiuto:
            nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Coperchi dello yogurt',
        tipoRifiuto:
            nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Flaconi in plastica di detergenti/detersivi',
        tipoRifiuto:
            nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Foglio di alluminio per alimenti',
        tipoRifiuto:
            nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Lattine di bevande',
        tipoRifiuto:
            nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Moka per il caffè',
        tipoRifiuto:
            nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Pellicola in nylon',
        tipoRifiuto:
            nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Pentole, pentolini e padelle',
        tipoRifiuto:
            nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Piatti e bicchieri in plastica monouso',
        tipoRifiuto:
            nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Sacchetti per caffè',
        tipoRifiuto:
            nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Scatolette e barattoli per alimenti',
        tipoRifiuto:
            nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Tappi di bottiglie di olio',
        tipoRifiuto:
            nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Tubetti di dentifricio e similari',
        tipoRifiuto:
            nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Tubetti in alluminio per conserve',
        tipoRifiuto:
            nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Vaschette in alluminio',
        tipoRifiuto:
            nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Vaschette in plastica',
        tipoRifiuto:
            nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Vaschette in polistirolo',
        tipoRifiuto:
            nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Vasetti di yogurt in plastica ',
        tipoRifiuto:
            nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Accendini',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Astucci',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Bacinelle',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Calze in nylon',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Cancelleria',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Carta oleata per alimenti',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Carta plastificata',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Carta sporca da solventi',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Carta sporca da vernici',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Cartelle (cancelleria)',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'CD, cassette musicali, videocassette e floppy',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Cosmetici',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Cotton Fioc',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Cover telefonini',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Giocattoli',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Guarnizioni uso familiare',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Lamette usa e getta',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Lastre RX',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Mozziconi di sigaretta',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Nastri adesivi',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Oggetti multimateriali',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Negativi fotografici',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Pagliette abrasive',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Pannolini',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Pennarelli consumati',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Penne',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Polvere da aspirapolvere',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Posate in plastica',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Scarpe',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Secchi',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Stracci',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Spazzole',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Spazzolini da denti',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Spugne',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Stoviglie rotte',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Tubetti di colla',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Bicchieri di vetro',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Bottiglie di vetro',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Contenitori di vetro',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Vasetti di vetro',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Fiori recisi',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Fogliame',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Sfalci d\'erba',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Ramaglie',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Residui dell\'orto',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Potature di siepi ed alberi',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Avanzi di cibo',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Bucce di frutta',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Carne',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Ceneri spente da stufa o camino',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Filtri di te\'',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Fondi di caffè',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Gusci di uova',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Frutta secca',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Lettiera di piccoli animali domestici',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Ossa',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Pane',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Farinacei vari',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Pesce',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Scarti di verdura e fiori recisi',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
    generaElencoRifiuti(
        descrizioneRifiuto: 'Tovaglioli usati di carta',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Calcolatrici',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.benidurevoli)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Telecomandi',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.benidurevoli)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Congelatori',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.benidurevoli)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Frigoriferi',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.benidurevoli)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Condizionatori',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.benidurevoli)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Lampade a neon',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.benidurevoli)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Lampade a risparmio energetivo',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.benidurevoli)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Lavastovile',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.benidurevoli)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Lavatrice',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.benidurevoli)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Lettori DVD',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.benidurevoli)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Cellulari',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.benidurevoli)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'PC',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.benidurevoli)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Piccoli elettrodomestici',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.benidurevoli)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Televisore',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.benidurevoli)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Monitor PC',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.benidurevoli)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Biciclette',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.ferro)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Caffettiere',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.ferro)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Pentole',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.ferro)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Cerchi per ruote',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.ferro)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Forni',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.ferro)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Fornelli',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.ferro)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Reti da letto',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.ferro)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Reti per recinzione',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.ferro)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Scaffali metallici',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.ferro)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Attrezzi voluminosi',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.ingombranti)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Divani',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.ingombranti)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Poltrone',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.ingombranti)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Materassi',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.ingombranti)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Grossi secchi, mastelli in plastica',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.ingombranti)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Mobilio da giardino in resina',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.ingombranti)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Onduline in vetroresina',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.ingombranti)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Stendini in resina',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.ingombranti)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Tapparelle',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.ingombranti)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Tubi in PVC',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.ingombranti)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Assi di legno',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.legno)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Legname',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.legno)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Tronchi',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.legno)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Bancali in legno',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.legno)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Cassette in legno',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.legno)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Infissi senza vetro',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.legno)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Mobili in genere',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.legno)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Porte senza vetro',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.legno)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Finestre senza vetro',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.legno)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Disinfettanti',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.medicinali)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Pomate',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.medicinali)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Farmaci scaduti',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.medicinali)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Fiale per iniezioni',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.medicinali)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Pile a bottone',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.pile)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Pile a stilo',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.pile)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Pile rettangolari',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.pile)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Contenitori con simboli T/F',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.tfepericolosi)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Contenitori con trielina',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.tfepericolosi)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Contenitori con solventi',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.tfepericolosi)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Contenitori con smacchiatori',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.tfepericolosi)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Contenitori con insetticidi',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.tfepericolosi)),

    generaElencoRifiuti(
        descrizioneRifiuto: 'Spray con simboli di pericolosità',
        tipoRifiuto: nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.tfepericolosi)),


  ];

  String testoDaCercare;


  Widget mostraTuttiRifiuti(String testoDaCercare) {

    List<Widget> elenco = List<Widget>();

    for (var i = 0; i < tuttiIRifiuti.length; i++) {  // 05/01/2021 Sotto ho tolto la possibilità di vedere l'icona. Faccio più pulito
      IconData icona = Icons.add;
      Color coloreIcona = Colors.blue[200];

      if (tuttiIRifiuti[i].tipoRifiuto ==
          nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)) {
        icona = Icons.account_box_sharp;
        coloreIcona = Colors.brown.shade700;
      }

      if (tuttiIRifiuti[i].tipoRifiuto ==
          nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)) {
        icona = Icons.play_arrow;
        coloreIcona = Colors.deepOrange.shade700;
      }

      if (tuttiIRifiuti[i].tipoRifiuto ==
          nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)) {
        icona = Icons.play_arrow;
        coloreIcona = Colors.black;
      }

      if (tuttiIRifiuti[i].tipoRifiuto ==
          nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro)) {
        icona = Icons.play_arrow;
        coloreIcona = Colors.lightBlueAccent;
      }

      if (tuttiIRifiuti[i].tipoRifiuto ==
          nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)) {
        icona = Icons.play_arrow;
        coloreIcona = Colors.green;
      }

      if (tuttiIRifiuti[i].tipoRifiuto ==
          nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)) {
        icona = Icons.play_arrow;
        coloreIcona = Colors.deepOrange;
      }

      if (tuttiIRifiuti[i].tipoRifiuto ==
          nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.benidurevoli)) {
        icona = Icons.play_arrow;
        coloreIcona = Colors.yellow;
      }

      if (tuttiIRifiuti[i].tipoRifiuto ==
          nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.ferro)) {
        icona = Icons.play_arrow;
        coloreIcona = Colors.grey;
      }

      if (tuttiIRifiuti[i].tipoRifiuto ==
          nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.ingombranti)) {
        icona = Icons.play_arrow;
        coloreIcona = Colors.deepPurple;
      }

      if (tuttiIRifiuti[i].tipoRifiuto ==
          nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.legno)) {
        icona = Icons.play_arrow;
        coloreIcona = Colors.pink;
      }

      if (tuttiIRifiuti[i].tipoRifiuto ==
          nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.medicinali)) {
        icona = Icons.play_arrow;
        coloreIcona = Colors.tealAccent;
      }

      if (tuttiIRifiuti[i].tipoRifiuto ==
          nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.pile)) {
        icona = Icons.play_arrow;
        coloreIcona = Colors.lightGreenAccent;
      }

      if (tuttiIRifiuti[i].tipoRifiuto ==
          nomeRifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.tfepericolosi)) {
        icona = Icons.play_arrow;
        coloreIcona = Colors.brown.shade100;
      }

      if (testoDaCercare == null) { testoDaCercare = "";}  // La prima volta che avvio l'app è vuoto
      testoDaCercare = testoDaCercare.toLowerCase();      // il valore che scrive l'utente lo rendo tutto minuscolo
      String rifiutiDaCercare = tuttiIRifiuti[i].descrizioneRifiuto.toLowerCase();  // la stringa che ricevo dall'elenco rifiuti la rendo tutta minuscola, cosi da poter fare la comparazione con il dato passato dall'utente

      if (rifiutiDaCercare.contains(testoDaCercare)) {    //  se la stringa scritta dall'utende è contenuta in una stringa presente nell'elenco, mostro il dato
        elenco.add(
          Container(
            child: ListTile(
             // leading: Icon(
                //icona,
               // size: 30,
               // color: coloreIcona,
             // ),
              title: Text(
                tuttiIRifiuti[i].descrizioneRifiuto,
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text(
                tuttiIRifiuti[i].tipoRifiuto,
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        );
      }
    }

    return Column(children: elenco);
  }
}
