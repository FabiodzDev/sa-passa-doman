import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sapassadoman/classegiornirifiuti.dart';
import 'package:sapassadoman/recuperaData.dart';
import 'package:sapassadoman/tiporifiuti.dart';

// R I F I U T I        G I A L L O

NomeRifiuto rifiuto = NomeRifiuto();

final datadioggi = Dataoggi();  // ISTANZO LA CLASSE Dataoggi, che mi servirà per recuperare le funzioni della data di domani...

class AbbinamentoGiorniRifiuti {    // LISTA RIFIUTI GIALLO
  

  List <GiornoRifiuti> elencoZonaGialla = [

    GiornoRifiuti(giorno: "1999-12-01 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)), // lasciare in posizione 0
    GiornoRifiuti(giorno: "2020-12-07 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) + " " + rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    GiornoRifiuti(giorno: "2020-12-08 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) + " e " + rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    GiornoRifiuti(giorno: "2020-12-09 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
    GiornoRifiuti(giorno: "2020-12-09 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    GiornoRifiuti(giorno: "2020-12-10 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
    GiornoRifiuti(giorno: "2020-12-12 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco))


  ];

  String rilevagiorno(int n) {
    return elencoZonaGialla[n].giorno;
  }

  String rilevarifiuto(int n) {
    return elencoZonaGialla[n].rifiuto;
  }



  String verifica() {

    for (int i = 1; i < elencoZonaGialla.length; i++) {

        // converto in formato data la data che ho nella List che è in formato String   1974-03-20 00:00:00.000
        String strDt = rilevagiorno(i);
        DateTime parseDt = DateTime.parse(strDt);
        print(parseDt);
        print(datadioggi.dataDomani());

        // facciamo la differenza tra oggi e la data della lista che sto analizzando
        final difference = parseDt.difference(datadioggi.dataDomaniFormatoDateTime()).inDays;
        print (difference);

        // se la differenza è uguale a 1, significa che domani passa qualcosa.
        if (difference == 0 ) {
          print("trovato GIALLO");
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
