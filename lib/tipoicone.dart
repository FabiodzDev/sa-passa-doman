import 'package:flutter/material.dart';

class ElencoIcone {

  String rifiuto;

  String percorsoDaUtilizzare ({@required String rifiuto}){

    if (rifiuto == "VETRO") {
      return "images/vetro.png";
    }

    if (rifiuto == "PLASTICA, LATTINE") {
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

    if (rifiuto == "NULLA") {
      return "images/relax.jpg";
    }

    if (rifiuto != "VETRO" && rifiuto != "PLASTICA" && rifiuto != "UMIDO" && rifiuto != "SECCO" && rifiuto != "CARTA" && rifiuto != "VERDE" && rifiuto != "NULLA"){

      return "images/altro.png";
    }


  }

}