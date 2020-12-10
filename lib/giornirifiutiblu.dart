import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sapassadoman/classegiornirifiuti.dart';
import 'package:sapassadoman/recuperaData.dart';
import 'tiporifiuti.dart';



// R I F I U T I     B L U

final datadioggi = Dataoggi();

NomeRifiuto rifiuto = NomeRifiuto();


class AbbinamentoGiorniRifiutiBLU {   // LISTA RIFIUTI BLU

    List <GiornoRifiuti> elencoZonaBlu = [

      GiornoRifiuti(giorno: "1999-12-05 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro)), 
      GiornoRifiuti(giorno: "2020-12-03 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
      GiornoRifiuti(giorno: "2020-12-08 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
      GiornoRifiuti(giorno: "2020-12-11 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) + " e " + rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
      GiornoRifiuti(giorno: "2020-12-09 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro)),
      GiornoRifiuti(giorno: "2020-12-10 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),
      GiornoRifiuti(giorno: "2020-12-10 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido))

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
        print(parseDt);
        print(datadioggi.dataDomani());

        // facciamo la differenza tra oggi e la data della lista che sto analizzando
        final difference = parseDt.difference(datadioggi.dataDomaniFormatoDateTime()).inDays;
        print (difference);

        // se la differenza è uguale a 1, significa che domani passa qualcosa.
        if (difference == 0) {
          print("trovato BLU");
          return rilevarifiuto(i);
          break ;  // ESCE DAL LOOP SE LO TROVA
        }
        else if (difference < 0 ) {
          continue;

        } else {

          return "NESSUN RIFIUTO";

        }


      }

    }




}
