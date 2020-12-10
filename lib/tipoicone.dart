import 'package:flutter/material.dart';

import 'package:sapassadoman/tiporifiuti.dart';

class ElencoIcone {

  String rifiuto;

  String percorsoDaUtilizzare ({@required String rifiuto}){

    if (rifiuto == "VETRO") {
      return "images/vetro.png";
    }

    if (rifiuto == "PLASTICA") {
      return "images/plastica.png";
    }

    if (rifiuto == "UMIDO") {
      return "images/umido.png";
    }

    if (rifiuto == "SECCO") {
      return "images/secco.png";
    }

    if (rifiuto == "CARTA") {
      return "images/scatola.png";
    }

    if (rifiuto == "VERDE") {
      return "images/verde.png";
    }

    if (rifiuto == "NESSUN RIFIUTO") {
      return "images/relax.jpg";
    }

    if (rifiuto != "VETRO" && rifiuto != "PLASTICA" && rifiuto != "UMIDO" && rifiuto != "SECCO" && rifiuto != "CARTA" && rifiuto != "VERDE" && rifiuto != "NESSUN RIFIUTO"){

      return "images/altro.png";
    }


  }

}