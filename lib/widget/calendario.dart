import 'package:flutter/material.dart';

class Calendario extends StatelessWidget {

  String id;
  String nomeComune;
  String nomeZona;
  String data;
  String nomeRifiuto;
  String immagineRifiuto;

  Calendario({@required this.id, @required this.nomeComune, @required this.nomeZona, @required this.data, @required this.nomeRifiuto, @required this.immagineRifiuto});


  // RECUPERIAMO LA DATA DAL JSON COSI 2016-12-02 E LA GIRIAMO IN 02-12-2016
  String converti(){
    var arr = data.split('-');
    String nuovadata = "${arr[2]}-${arr[1]}-${arr[0]}";
    return nuovadata;
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 15, left: 15, right: 15),

      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10,),
            alignment: Alignment.topLeft,
            child: Text("SA PASSA DOMAN ${converti()} ?", style: TextStyle(fontSize: 18), textAlign: TextAlign.left,),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(top: 10, bottom: 5),
            child: Text(nomeRifiuto, style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600), textAlign: TextAlign.left),
          ),
        Container(
          width: 300,
          height: 350,
          child: Image.network(immagineRifiuto),
        )

        ],
      )

    );
  }
}
