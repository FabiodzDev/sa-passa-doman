import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WidgetEventiComunieLimitrofi extends StatefulWidget {

  String nomeEvento = " ";
  String luogoEvento = " ";
  String dataInizio = " - - ";
  String dataFine = " - - ";
  String testoEvento = " ";
  String urlImmagine = "";
  String linkEvento = " ";
  var arr;

  WidgetEventiComunieLimitrofi({@required this.nomeEvento, @required this.luogoEvento, @required this.dataInizio, @required this.dataFine, @required this.testoEvento, @required this.urlImmagine, @required this.linkEvento});

  @override
  _WidgetEventiComunieLimitrofiState createState() => _WidgetEventiComunieLimitrofiState();
}

class _WidgetEventiComunieLimitrofiState extends State<WidgetEventiComunieLimitrofi> {

  checkNull(){

    if(widget.nomeEvento == null) {
      widget.nomeEvento = "";
    }
    if(widget.luogoEvento == null) {
      widget.luogoEvento = "";
    }
    if(widget.dataInizio == null) {
      widget.dataInizio = " - - ";
    }
    if(widget.dataFine == null) {
      widget.dataFine = " - - ";
    }
    if(widget.testoEvento == null) {
      widget.testoEvento = "";
    }
    if(widget.urlImmagine == null) {
      widget.urlImmagine = "";
    }
    if(widget.linkEvento == null) {
      widget.linkEvento = "";
    }

  }

  String sistemaDataInizio(){

    widget.arr = widget.dataInizio.split('-');
    var dataInizioFormattata = widget.arr[2] + "-" + widget.arr[1] + "-" + widget.arr[0];

    print(dataInizioFormattata);
    return dataInizioFormattata;

  }

  String sistemaDataFine(){

    widget.arr = widget.dataFine.split('-');
    var dataFineFormattata = widget.arr[2] + "-" + widget.arr[1] + "-" + widget.arr[0];

    print(dataFineFormattata);
    return dataFineFormattata;

  }

  @override
  Widget build(BuildContext context) {

    checkNull();

    print("PROVA LINK " + widget.urlImmagine);

    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start  ,
        children: [
          Container(child: Text(widget.nomeEvento, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
          SizedBox(
            height: 10,
          ),
          Container(child: Text(widget.luogoEvento, style: TextStyle(fontSize: 18),)),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.pink,
                      width: MediaQuery.of(context).size.width * .40,
                      child: Center(child: Text("Data Inizio", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),))),
                  SizedBox(height: 5,),
                  Text(sistemaDataInizio(), style: TextStyle(fontSize: 18),),
                ],
              ),
              Column(
                children: [
                  Container(
                    color: Colors.pink,
                      width: MediaQuery.of(context).size.width * .40,
                      child: Center(child: Text("Data Fine", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),))),
                  SizedBox(height: 5,),
                  Text(sistemaDataFine(), style: TextStyle(fontSize: 18),),
                ],
              ),

            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(child: Text(widget.testoEvento, style: TextStyle(fontSize: 18),)),
          SizedBox(
            height: 15,
          ),

          Text("Per info:  " + widget.linkEvento, style: TextStyle(fontSize: 18)),
          SizedBox(
            height: 15,
          ),
          Container(
            height: MediaQuery.of(context).size.width * .90,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://www.viviarcole.it/aa_spd_immagini/fotoluoghiepersone/${widget.urlImmagine}"),
                  fit: BoxFit.cover),
              color: Colors.pink,
              border: Border.all(

                //color: Colors.pink[800], // Set border color
                  width: 0.0), // Set border width
              borderRadius: BorderRadius.all(
                  Radius.circular(10.0)), // Set rounded corner radius
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: Colors.pink,
            thickness: 2,

          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
