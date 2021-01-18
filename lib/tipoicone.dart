import 'package:flutter/material.dart';

class ElencoIcone {

  String rifiuto;

  // ESSENDOCI SEMPRE NEL CALENDARIO 2 RIFIUTI, DI CUI IL SECONDO UMIDO, HO USATO IL CONTIENE..TRANNE PER L'UMIDO SE DOVESSE PASSARE DA SOLO

  String percorsoDaUtilizzare ({@required String rifiuto}){

    if (rifiuto.contains("VETRO") && rifiuto.contains("UMIDO")) {

      return "images/vetroeumido.png";

    } else if (rifiuto.contains("VETRO")) {

      return "images/vetro.png";

    }

    if (rifiuto.contains("PLASTICA, LATTINE") && rifiuto.contains("UMIDO"))
      {
        return "images/plasticaeumido.png";

      } else if (rifiuto.contains("PLASTICA, LATTINE")) {

      return "images/plastica.png";
    }

    if (rifiuto == "UMIDO") {
      return "images/umido.png";
    }


    if (rifiuto.contains("SECCO") && rifiuto.contains("UMIDO")) {

      return "images/seccoeumido.png";

    } else if (rifiuto.contains("SECCO")) {

      return "images/secco.png";

    }

    if (rifiuto.contains("CARTA") && rifiuto.contains("UMIDO")){

      return "images/scatolaeumido.png";

    } else if (rifiuto.contains("CARTA")) {

      return "images/scatola.png";

    }

    if (rifiuto.contains("VERDE") && rifiuto.contains("UMIDO")){

      return "images/verdeeumido.png";

    } else if (rifiuto.contains("VERDE")) {

      return "images/verde.png";

    }

    if (rifiuto == "NULLA") {
      return "images/relax.jpg";
    }

    if (rifiuto != "VETRO" && rifiuto != "PLASTICA, LATTINE" && rifiuto != "UMIDO" && rifiuto != "SECCO" && rifiuto != "CARTA" && rifiuto != "VERDE" && rifiuto != "NULLA"){

      return "images/altro.png";
    }


  }

}