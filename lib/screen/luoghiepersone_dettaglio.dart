import 'package:flutter/material.dart';

class LuoghiePersoneDettaglio extends StatefulWidget {


  String titoloLuoghiePersone;
  String urlimmagineLuoghiePersone;
  String descrizione1LuoghiePersone;
  String descrizione2LuoghiePersone;

  LuoghiePersoneDettaglio({@required this.titoloLuoghiePersone, @required this.urlimmagineLuoghiePersone, @required this.descrizione1LuoghiePersone, @required this.descrizione2LuoghiePersone});
  @override
  _LuoghiePersoneDettaglioState createState() => _LuoghiePersoneDettaglioState();
}

class _LuoghiePersoneDettaglioState extends State<LuoghiePersoneDettaglio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LUOGHI E PERSONE"),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          child: ListView(
            children: [
              Center(child: Text(widget.titoloLuoghiePersone, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),)),
              SizedBox(
                height: 20,
              ),
              Image.network(
                "https://www.viviarcole.it/aa_spd_immagini/fotoluoghiepersone/${widget.urlimmagineLuoghiePersone}",
                fit: BoxFit.cover,
                //width: 1000,
                //height: 150,
              ),
              SizedBox(
                height: 15,
              ),
              Text(widget.descrizione1LuoghiePersone, textAlign: TextAlign.justify ,style: TextStyle(fontSize: 17),),
              SizedBox(
                height: 15,
              ),
              Text(widget.descrizione2LuoghiePersone, textAlign: TextAlign.justify ,style: TextStyle(fontSize: 17),)
            ],
          ),
        ),
      ),
    );
  }
}
