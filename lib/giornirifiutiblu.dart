import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sapassadoman/classegiornirifiuti.dart';
import 'package:sapassadoman/recuperaData.dart';
import 'tiporifiuti.dart';

// R I F I U T I     B L U

final datadioggi = Dataoggi();

NomeRifiuto rifiuto = NomeRifiuto();

class AbbinamentoGiorniRifiutiBLU {
  // LISTA RIFIUTI BLU

  List<GiornoRifiuti> elencoZonaBlu = [
    GiornoRifiuti(
        giorno: "1999-12-05 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro)),
    GiornoRifiuti(
        giorno: "2020-12-12 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
    GiornoRifiuti(
        giorno: "2020-12-13 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    GiornoRifiuti(
        giorno: "2020-12-14 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
    GiornoRifiuti(
        giorno: "2020-12-15 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro)),
    GiornoRifiuti(
        giorno: "2020-12-16 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2020-12-17 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2020-12-18 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2020-12-19 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2020-12-20 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2020-12-21 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2020-12-22 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2020-12-23 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-12-31 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(
            tipoRifiuto:
                tipoRifiuti.umido)) // LASCIARE QUESTA DATA LUNGHISSIMA.
  ];

  String rilevagiorno(int n) {
    return elencoZonaBlu[n].giorno;
  }

  String rilevarifiuto(int n) {
    return elencoZonaBlu[n].rifiuto;
  }

  String verifica() {
    for (int i = 1; i < elencoZonaBlu.length; i++) {
      // converto in formato data la data che ho nella List che è in formato String   1974-03-20 00:00:00.000
      String strDt = rilevagiorno(i);
      DateTime parseDt = DateTime.parse(strDt);
      // print (parseDt);

      // facciamo la differenza tra oggi e la data della lista che sto analizzando
      final int difference =
          parseDt.difference(datadioggi.dataDomaniFormatoDateTime()).inDays;

      // se la differenza è uguale a 1, significa che domani passa qualcosa.
      if (difference == 0) {
        return rilevarifiuto(i);
        break; // ESCE DAL LOOP SE LO TROVA
      } else if (difference < 0) {
        continue;
      } else {
        return "NESSUN RIFIUTO";
      }
    }
  }

  Widget listOfWidgets() {
    List<Widget> list = List<Widget>();
    for (var i = 0; i < elencoZonaBlu.length; i++) {
      String giorno = rilevagiorno(i);
      DateTime giornoconvertito =
          DateTime.parse(giorno); // DA STRINGA CON ORARIO A DATETIME
      print(giornoconvertito);
      String formattedDate = DateFormat('dd-MM-yyyy').format(
          giornoconvertito); // DA DATETIME CON ORARIO A STRINGA SENZA ORARIO
      print(formattedDate);

      // facciamo la differenza tra oggi e la data della lista che sto analizzando
      final int differenceX = giornoconvertito
          .difference(datadioggi.dataDomaniFormatoDateTime())
          .inDays;

      if (list.length < 5) {
        // LIMITO I VALORI DELLA LISTA A 5
        if (differenceX == 0 || differenceX > 1) {
          // Se la data è uguale a domani oppure è maggiore aggiungi alla lista

          list.add(
            Container(
              child: ListTile(
                leading: Icon(
                  Icons.play_arrow,
                  size: 30,
                  color: Colors.blue[200],
                ),
                title: Text(
                  formattedDate,
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: Text(elencoZonaBlu[i].rifiuto, style: TextStyle(fontSize: 17),),
              ),
            ),
          );
        }
      }
    }
    return Column(children: list);
  }
}
