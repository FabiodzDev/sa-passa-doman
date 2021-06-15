import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:sapassadomantter/screen/tutteleimmagini.dart';

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
        brightness: Brightness.dark, // orologio e wifi bianchi
        actions: [
          IconButton(
            icon: Icon(MaterialCommunityIcons.image_album, size: 30,),

            onPressed: () {

//              Navigator.pop(context);
//              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => TutteLeImmagini() ));
            },
          )
        ],

      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 5),
          child: ListView(
            children: [
              Center(child: Text(widget.titoloLuoghiePersone, style: TextStyle(fontSize: 18),)),
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
