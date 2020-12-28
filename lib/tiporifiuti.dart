import 'package:flutter/material.dart';

enum tipoRifiuti {      // elenco di possibilità al tipoRifiuti, accessibile tramite tipoRifiuti.vetro ecc
    vetro,
    carta,
    umido,
    secco,
    plastica,
    verde,
    benidurevoli,
    ferro,
    ingombranti,
    legno,
    medicinali,
    pile,
    tfepericolosi
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

    if (tipoRifiuto == tipoRifiuti.benidurevoli ) {
      return "BENI DUREVOLI";
    }

    if (tipoRifiuto == tipoRifiuti.ferro ) {
      return "FERRO";
    }

    if (tipoRifiuto == tipoRifiuti.ingombranti ) {
      return "INGOMBRANTI";
    }

    if (tipoRifiuto == tipoRifiuti.legno ) {
      return "LEGNO";
    }

    if (tipoRifiuto == tipoRifiuti.medicinali ) {
      return "MEDICINALI";
    }

    if (tipoRifiuto == tipoRifiuti.pile ) {
      return "PILE";
    }

      if (tipoRifiuto == tipoRifiuti.tfepericolosi ) {
      return "T/F E PERICOLOSI";
    }

  }
}