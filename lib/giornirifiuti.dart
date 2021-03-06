

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:intl/intl.dart';
import 'package:sapassadomantter/recuperaData.dart';
import 'package:sapassadomantter/tiporifiuti.dart';

import 'classegiornirifiuti.dart';

// R I F I U T I        G I A L L O

NomeRifiuto rifiuto = NomeRifiuto();

final datadioggi = Dataoggi();  // ISTANZO LA CLASSE Dataoggi, che mi servirà per recuperare le funzioni della data di domani...

class AbbinamentoGiorniRifiuti  {    // LISTA RIFIUTI GIALLO



  List <GiornoRifiuti> elencoZonaGialla = [

    GiornoRifiuti(giorno: "1999-12-01 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)), // lasciare in posizione 0
    GiornoRifiuti(giorno: "2020-12-07 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) + " " + rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    GiornoRifiuti(giorno: "2020-12-10 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) + " e " + rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    GiornoRifiuti(giorno: "2020-12-13 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    GiornoRifiuti(giorno: "2020-12-15 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    GiornoRifiuti(giorno: "2020-12-20 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    GiornoRifiuti(giorno: "2020-12-21 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),
    GiornoRifiuti(giorno: "2020-12-22 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro)),
    GiornoRifiuti(giorno: "2020-12-23 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido) + " e " + rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    GiornoRifiuti(giorno: "2020-12-24 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    GiornoRifiuti(giorno: "2020-12-25 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta)),
    GiornoRifiuti(giorno: "2020-12-26 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica)),
    GiornoRifiuti(giorno: "2020-12-27 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro)),
    GiornoRifiuti(giorno: "2020-12-28 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),
    GiornoRifiuti(giorno: "2020-12-29 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco)),
    GiornoRifiuti(giorno: "2021-01-05 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) + " e " + rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
    GiornoRifiuti(giorno: "2021-01-08 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) + " e " + rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
    GiornoRifiuti(giorno: "2021-01-12 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) + " e " + rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
    GiornoRifiuti(giorno: "2021-01-15 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) + " e " + rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
    GiornoRifiuti(giorno: "2021-01-19 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) + " e " + rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
    GiornoRifiuti(giorno: "2021-01-22 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) + " e " + rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
    GiornoRifiuti(giorno: "2021-01-26 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) + " e " + rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),
    GiornoRifiuti(giorno: "2021-01-29 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) + " e " + rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),







    GiornoRifiuti(
        giorno: "2021-02-02 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-02-05 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-02-09 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-02-12 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-02-16 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-02-19 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-02-23 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-02-24 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-02-26 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-03-02 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-03-05 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-03-09 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-03-10 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),


    GiornoRifiuti(
        giorno: "2021-03-12 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-03-16 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-03-19 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-03-23 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-03-24 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),


    GiornoRifiuti(
        giorno: "2021-03-26 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-03-30 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-04-02 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-04-06 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-04-07 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),


    GiornoRifiuti(
        giorno: "2021-04-09 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-04-13 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-04-16 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-04-20 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-04-21 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),


    GiornoRifiuti(
        giorno: "2021-04-23 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-04-27 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-04-30 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-05-04 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-05-05 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),


    GiornoRifiuti(
        giorno: "2021-05-07 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-05-11 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-05-14 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-05-18 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-05-19 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),


    GiornoRifiuti(
        giorno: "2021-05-21 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-05-25 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-05-28 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-06-01 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),


    GiornoRifiuti(
        giorno: "2021-06-04 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-06-08 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-06-09 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-06-11 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-06-15 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),


    GiornoRifiuti(
        giorno: "2021-06-18 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-06-22 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-06-23 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-06-25 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-06-29 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-07-01 00:00:00.000",
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
        giorno: "2021-07-06 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-07-08 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-07-10 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-07-13 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-07-14 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-07-16 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-07-20 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-07-22 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-07-24 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-07-27 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-07-29 00:00:00.000",
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
        giorno: "2021-08-03 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-08-05 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-08-07 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-08-10 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-08-12 00:00:00.000",
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
        giorno: "2021-08-17 00:00:00.000",
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
        giorno: "2021-08-21 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-08-24 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-08-26 00:00:00.000",
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
        giorno: "2021-08-31 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-09-03 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-09-07 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-09-08 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-09-10 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-09-14 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-09-15 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-09-17 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-09-21 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-09-24 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-09-28 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-09-29 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-10-01 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-10-05 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-10-06 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-10-08 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-10-12 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),


    GiornoRifiuti(
        giorno: "2021-10-15 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-10-19 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-10-20 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-10-22 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-10-26 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-10-29 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-11-02 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-11-03 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-11-05 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-11-09 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),


    GiornoRifiuti(
        giorno: "2021-11-12 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-11-16 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-11-17 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),

    GiornoRifiuti(
        giorno: "2021-11-19 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-11-23 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-11-26 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-11-30 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),


    GiornoRifiuti(
        giorno: "2021-12-03 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-12-07 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-12-10 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-12-14 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-12-15 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),


    GiornoRifiuti(
        giorno: "2021-12-17 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-12-21 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-12-24 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-12-28 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2021-12-31 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2022-01-04 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2022-01-07 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2022-01-11 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2022-01-14 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2022-01-18 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.carta) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2022-01-21 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.vetro) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2022-01-25 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.plastica) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),

    GiornoRifiuti(
        giorno: "2022-01-26 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.verde)),


    GiornoRifiuti(
        giorno: "2022-01-28 00:00:00.000",
        rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco) +
            " e " +
            rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.umido)),





    GiornoRifiuti(giorno: "2099-12-31 00:00:00.000", rifiuto: rifiuto.ilnomerifiuto(tipoRifiuto: tipoRifiuti.secco))      // LASCIARE QUESTA LUNGHISSIMA DATA


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

        // facciamo la differenza tra data domani e la data della lista che sto analizzando
        final difference = parseDt.difference(datadioggi.dataDomaniFormatoDateTime()).inDays;


        // se la differenza è uguale a 1, significa che domani passa qualcosa.
        if (difference == 0 ) {

          return rilevarifiuto(i);
          break ;  // ESCE DAL LOOP SE LO TROVA
        }
        else if (difference < 0 ) {

          continue;
        } else {

         return "NULLA";

        }

      }

    }

  Widget listOfWidgets() {
    List<Widget> list = List<Widget>();
    for (var i = 0; i < elencoZonaGialla.length; i++) {

      String giorno = rilevagiorno(i);
      DateTime giornoconvertito = DateTime.parse(giorno);  // DA STRINGA CON ORARIO A DATETIME
      //print (giornoconvertito);
      String formattedDate = DateFormat('dd-MM-yyyy').format(giornoconvertito);   // DA DATETIME CON ORARIO A STRINGA SENZA ORARIO
      //print (formattedDate);

      // facciamo la differenza tra oggi e la data della lista che sto analizzando
      final int differenceX = giornoconvertito.difference(datadioggi.dataDomaniFormatoDateTime()).inDays;


      // X IL DRAWER, CREO UNA LISTA DEI PROSSIMI 5 GIORNI

      if (list.length < 5) {
        // LIMITO I VALORI DELLA LISTA A 5
        if (differenceX == 0 || differenceX > 0) {
          // Se la data è uguale a domani oppure è maggiore aggiungi alla lista

          list.add(
            Container(
              child: ListTile(
                leading: Icon(Entypo.location_pin , size: 30, color: Colors.yellow[600],),
                title: Text(formattedDate, style: TextStyle(fontSize: 18),),
                subtitle: Text(elencoZonaGialla[i].rifiuto, style: TextStyle(fontSize:  17),),
              ),
            ),
          );
        }
      }
    }
    return Column(children: list);
  }


  Widget calendarioCompletoGiallo() {
    List<Widget> listcompletaGialla = List<Widget>();
    for (var i = 0; i < elencoZonaGialla.length - 1; i++) {

      String giorno = rilevagiorno(i);
      DateTime giornoconvertito = DateTime.parse(giorno);  // DA STRINGA CON ORARIO A DATETIME
      //print (giornoconvertito);
      String formattedDate = DateFormat('dd-MM-yyyy').format(giornoconvertito);   // DA DATETIME CON ORARIO A STRINGA SENZA ORARIO
      //print (formattedDate);

      // facciamo la differenza tra oggi e la data della lista che sto analizzando
      final int differenceX = giornoconvertito.difference(datadioggi.dataDomaniFormatoDateTime()).inDays;


      // X IL DRAWER, CREO UNA LISTA DEI PROSSIMI 5 GIORNI

        if (differenceX == 0 || differenceX > 0) {
          // Se la data è uguale a domani oppure è maggiore aggiungi alla lista

          listcompletaGialla.add(
            Container(
              child: ListTile(
                leading: Icon(Entypo.location_pin , size: 30, color: Colors.yellow[600],),
                title: Text(formattedDate, style: TextStyle(fontSize: 18),),
                subtitle: Text(elencoZonaGialla[i].rifiuto, style: TextStyle(fontSize:  17),),
              ),
            ),
          );
        }

    }
    return Column(children: listcompletaGialla);
  }

}
