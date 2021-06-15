import 'package:flutter/material.dart';

import 'package:flip_card/flip_card.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WidgetOfferteSpeciali extends StatefulWidget {
  String nomeazienda = " ";
  String luogoazienda = " ";
  String datainizioofferta = " - - ";
  String datafineofferta = " - - ";
  String testoofferta = " ";
  String parolamagica = " ";
  String link = " ";
  String urllogo = " ";
  var arr;


  WidgetOfferteSpeciali({
    @required this.nomeazienda,
    @required this.luogoazienda,
    @required this.datainizioofferta,
    @required this.datafineofferta,
    @required this.testoofferta,
    @required this.parolamagica,
    @required this.link,
    @required this.urllogo,
  });

  @override
  _WidgetOfferteSpecialiState createState() => _WidgetOfferteSpecialiState();
}

class _WidgetOfferteSpecialiState extends State<WidgetOfferteSpeciali> {

  checkNull(){

    if(widget.nomeazienda == null) {
      widget.nomeazienda = "";
    }
    if(widget.luogoazienda == null) {
      widget.luogoazienda = "";
    }
    if(widget.datainizioofferta == null) {
      widget.datainizioofferta = " - - ";
    }
    if(widget.datafineofferta == null) {
      widget.datafineofferta = " - - ";
    }
    if(widget.testoofferta == null) {
      widget.testoofferta = "";
    }
    if(widget.parolamagica == null) {
      widget.parolamagica = "";
    }
    if(widget.link == null) {
      widget.link = "";
    }
    if(widget.urllogo == null) {
      widget.urllogo = "";
    }

  }

  String sistemaDataInizio(){

    widget.arr = widget.datainizioofferta.split('-');
    var dataInizioFormattata = widget.arr[2] + "-" + widget.arr[1] + "-" + widget.arr[0];

    print(dataInizioFormattata);
    return dataInizioFormattata;

  }

  String sistemaDataFine(){

    widget.arr = widget.datafineofferta.split('-');
    var dataFineFormattata = widget.arr[2] + "-" + widget.arr[1] + "-" + widget.arr[0];

    print(dataFineFormattata);
    return dataFineFormattata;

  }

  renderBg() {
    return Container(
      decoration: BoxDecoration(color: const Color(0xFFFFFFFF)),
    );
  }

  renderAppBar(context) {
    return MediaQuery.removePadding(
      context: context,
      removeBottom: true,
      child: AppBar(
        brightness: Brightness.dark,
        elevation: 0.0,
        backgroundColor: Color(0x00FFFFFF),
      ),
    );
  }

  renderContent(context) {
    return Card(
      elevation: 0.0,
      margin: EdgeInsets.only(left: 32.0, right: 32.0, top: 20.0, bottom: 0.0),
      color: Color(0x00000000),
      child: FlipCard(
        direction: FlipDirection.HORIZONTAL,
        speed: 1000,
        onFlipDone: (status) {
          print(status);
        },
        front: Container(
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                //height: 50,
                padding: EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
                    widget.nomeazienda, textAlign: TextAlign.center, style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900, color: Colors.white),
                  ),
                ),

              ),
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(

                          "https://www.viviarcole.it/aa_spd_immagini/fotoluoghiepersone/${widget.urllogo}"),
                      fit: BoxFit.fitWidth),
                  color: Colors.white,
//                  border: Border.all(
//
//                    //color: Colors.pink[800], // Set border color
//                      width: 0.0), // Set border width
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)), // Set rounded corner radius
                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(widget.luogoazienda,
                      style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ),
              ),
            ],
          ),
        ),
        back: Container(
          decoration: BoxDecoration(
            color: Colors.amber.shade600,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10),
                  child: Text("OFFERTA VALIDA:", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25, color: Colors.white), )),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text("Dal", style: TextStyle(fontSize: 25, color: Colors.black),),
                      SizedBox(height: 10,),
                      Text(sistemaDataInizio(), style: TextStyle(fontSize: 17, color: Colors.white)),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      Text("Al", style: TextStyle(fontSize: 25, color: Colors.black),),
                      SizedBox(height: 10,),
                      Text(sistemaDataFine(), style: TextStyle(fontSize: 17, color: Colors.white)),
                    ],
                  )

                ],
              ),
              SizedBox(height: 5,),
              Container(
                padding: EdgeInsets.all(15),
                  child: Text(widget.testoofferta, textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, color: Colors.black))),
              Container(
                  padding: EdgeInsets.only(top: 10, left: 5, right: 5),
                  child: Text("Parola magica da comunicare al negoziante:", textAlign: TextAlign.center, style: TextStyle( fontSize: 17, color: Colors.white), )),
              Container(
                  padding: EdgeInsets.all(15),
                  child: Text(widget.parolamagica, textAlign: TextAlign.justify, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black))),
              Text("Per info: ${widget.link}", style: TextStyle(fontSize: 17),),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    checkNull();

    return Container(
      height: 500,
      width: 400,
//      appBar: AppBar(
//        title: Text('OFFERTE SPECIALI'),
//        brightness: Brightness.dark,
//      ),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          renderBg(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              renderAppBar(context),
              Container(
                height: 400,
                width: 400,
                child: renderContent(context),
              ),

            ],
          )
        ],
      ),
    );
  }
}
