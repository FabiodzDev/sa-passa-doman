import 'package:flutter/material.dart';

enum tipoRifiuti {      // elenco di possibilità al tipoRifiuti, accessibile tramite tipoRifiuti.vetro ecc
    vetro,
    carta,
    umido,
    secco,
    plastica,
    verde
  }

class NomeRifiuto {

  String nomeRifiuto;

  String ilnomerifiuto ({ @required tipoRifiuti tipoRifiuto}) {

    if (tipoRifiuto == tipoRifiuti.vetro) {
      return "VETRO";
    }

    if (tipoRifiuto == tipoRifiuti.carta) {
      return "CARTA";
    }

    if (tipoRifiuto == tipoRifiuti.umido) {
      return "UMIDO";
    }

    if (tipoRifiuto == tipoRifiuti.secco) {
      return "SECCO";
    }

    if (tipoRifiuto == tipoRifiuti.plastica) {
      return "PLASTICA, LATTINE";
    }

    if (tipoRifiuto == tipoRifiuti.verde ) {
      return "VERDE";
    }

  }
}