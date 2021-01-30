import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sapassadomantter/recuperaData.dart';
import 'classegiornirifiuti.dart';
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
        giorno: "2020-12-11 00:00:00.000",
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
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2020-12-23 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),

    GiornoRifiuti(
        giorno: "2020-12-24 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),

    GiornoRifiuti(
        giorno: "2020-12-25 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),


    GiornoRifiuti(
        giorno: "2020-12-26 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro)),


    GiornoRifiuti(
        giorno: "2020-12-27 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2020-12-28 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),

  GiornoRifiuti(
  giorno: "2021-01-02 00:00:00.000",
  rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde) +
  " e " +
  rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-01-04 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-01-07 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-01-11 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-01-14 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)+
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-01-18 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-01-21 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-01-25 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-01-28 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),



    GiornoRifiuti(
        giorno: "2021-02-01 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-02-04 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-02-08 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-02-11 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-02-15 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-02-18 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-02-22 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-02-24 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-02-25 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-03-01 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-03-04 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-03-08 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-03-10 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),


    GiornoRifiuti(
        giorno: "2021-03-11 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-03-15 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-03-18 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-03-22 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-03-24 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),


    GiornoRifiuti(
        giorno: "2021-03-25 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-03-29 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-04-01 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-04-05 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-04-07 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),


    GiornoRifiuti(
        giorno: "2021-04-08 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-04-12 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-04-15 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-04-19 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-04-21 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),


    GiornoRifiuti(
        giorno: "2021-04-22 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-04-26 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-04-29 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-05-03 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-05-05 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),


    GiornoRifiuti(
        giorno: "2021-05-06 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-05-10 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-05-13 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-05-17 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-05-19 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),


    GiornoRifiuti(
        giorno: "2021-05-20 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-05-24 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-05-27 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-05-31 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),


    GiornoRifiuti(
        giorno: "2021-06-03 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-06-07 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-06-09 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-06-10 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-06-14 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),


    GiornoRifiuti(
        giorno: "2021-06-17 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-06-21 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-06-23 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-06-24 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-06-28 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-06-30 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-07-02 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-07-03 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-07-05 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-07-07 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-07-09 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-07-12 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-07-14 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-07-15 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-07-19 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-07-21 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-07-23 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-07-26 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-07-28 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-07-30 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-07-31 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),


    GiornoRifiuti(
        giorno: "2021-08-02 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-08-04 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-08-06 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-08-09 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-08-11 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-08-13 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-08-14 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-08-16 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-08-18 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-08-19 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-08-20 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-08-23 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-08-25 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-08-27 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-08-28 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-08-30 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-09-02 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-09-06 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-09-08 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-09-09 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-09-13 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-09-15 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-09-16 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-09-20 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-09-23 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-09-27 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-09-29 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-09-30 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-10-04 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-10-06 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-10-07 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-10-11 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),


    GiornoRifiuti(
        giorno: "2021-10-14 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-10-18 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-10-20 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-10-21 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-10-25 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-10-28 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-11-01 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-11-03 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-11-04 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-11-08 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),


    GiornoRifiuti(
        giorno: "2021-11-11 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-11-15 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-11-17 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-11-18 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-11-22 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-11-25 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-11-29 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),


    GiornoRifiuti(
        giorno: "2021-12-02 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-12-06 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-12-09 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-12-13 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-12-15 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),


    GiornoRifiuti(
        giorno: "2021-12-16 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-12-20 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-12-23 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-12-27 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-12-30 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2022-01-03 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2022-01-06 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2022-01-10 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2022-01-13 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2022-01-17 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2022-01-20 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2022-01-24 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2022-01-26 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),


    GiornoRifiuti(
        giorno: "2022-01-27 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2022-01-31 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),




    GiornoRifiuti(
        giorno: "2099-12-31 00:00:00.000",
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
        return "NULLA";
      }
    }
  }

  Widget listOfWidgets() {
    List<Widget> list = List<Widget>();
    for (var i = 0; i < elencoZonaBlu.length; i++) {
      String giorno = rilevagiorno(i);
      DateTime giornoconvertito =
          DateTime.parse(giorno); // DA STRINGA CON ORARIO A DATETIME
      //print(giornoconvertito);
      String formattedDate = DateFormat('dd-MM-yyyy').format(
          giornoconvertito); // DA DATETIME CON ORARIO A STRINGA SENZA ORARIO
      //print(formattedDate);

      // facciamo la differenza tra data domani e la data della lista che sto analizzando
      final int differenceX = giornoconvertito
          .difference(datadioggi.dataDomaniFormatoDateTime())
          .inDays;


      // X IL DRAWER, CREO UNA LISTA DEI PROSSIMI 5 GIORNI

      if (list.length < 5) {
        // LIMITO I VALORI DELLA LISTA A 5
        if (differenceX == 0 || differenceX > 0) {
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

  Widget calendarioCompletoGiallo() {
    List<Widget> listcompletaBlu = List<Widget>();
    for (var i = 0; i < elencoZonaBlu.length - 1; i++) {

      String giorno = rilevagiorno(i);
      DateTime giornoconvertito = DateTime.parse(giorno);  // DA STRINGA CON ORARIO A DATETIME
      //print (giornoconvertito);
      String formattedDate = DateFormat('dd-MM-yyyy').format(giornoconvertito);   // DA DATETIME CON ORARIO A STRINGA SENZA ORARIO
      //print (formattedDate);

      // facciamo la differenza tra oggi e la data della lista che sto analizzando
      final int differenceX = giornoconvertito.difference(datadioggi.dataDomaniFormatoDateTime()).inDays;
      //print (differenceX);

      // X IL DRAWER, CREO UNA LISTA DEI PROSSIMI 5 GIORNI

      if (differenceX == 0 || differenceX > 0) {
        // Se la data è uguale a domani oppure è maggiore aggiungi alla lista

        listcompletaBlu.add(
          Container(
            child: ListTile(
              leading: Icon(Icons.play_arrow , size: 30, color: Colors.blue[200],),
              title: Text(formattedDate, style: TextStyle(fontSize: 18),),
              subtitle: Text(elencoZonaBlu[i].rifiuto, style: TextStyle(fontSize: 17),),
            ),
          ),
        );
      }

    }
    return Column(children: listcompletaBlu);
  }

}
