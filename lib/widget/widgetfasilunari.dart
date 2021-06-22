import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class WidgetFasiLunari extends StatelessWidget {

  String data = " - - ";
  String ora = " : : ";
  String nome = " ";
  Icon icona = Icon(
    MaterialCommunityIcons.image_album,
    color: Colors.white,
    size: 70,);
  var arr;


  WidgetFasiLunari({@required this.data, @required this.ora, @required this.nome});

  String sistemaData(){

    arr = data.split('-');
    var dataFormattata = arr[2] + "-" + arr[1] + "-" + arr[0];

    print(dataFormattata);
    return dataFormattata;

  }


  Icon convertiIcona(String nome){

    if (nome == "Luna Nuova") {
      return Icon(
        MaterialCommunityIcons.moon_new,
        color: Colors.white,
        size: 40,);
    } ;

    if (nome == "Luna Calante") {
      return Icon(
        MaterialCommunityIcons.moon_last_quarter,
        color: Colors.white,
        size: 40,);
    } ;

    if (nome == "Luna Crescente") {
      return Icon(
        MaterialCommunityIcons.moon_first_quarter,
        color: Colors.white,
        size: 40,);
    } ;

    if (nome == "Luna Piena") {
      return Icon(
        MaterialCommunityIcons.moon_full,
        color: Colors.white,
        size: 40,);
    } ;


  }


  @override
  Widget build(BuildContext context) {



    return Container(
      padding: EdgeInsets.only(left: 20, top: 5, bottom: 10, right: 20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 120,
                child: convertiIcona(nome),
                decoration: BoxDecoration(
                    color: Colors.blue.shade700,
                    borderRadius: BorderRadius.all(
                        Radius.circular(7.0),
                    ),
                    //border: Border.all(color: Colors.blueAccent)
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(nome, style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Container(
                width: 150,
                child: Text("Il  " + sistemaData(), style: TextStyle(fontSize: 18),),
              ),
              Container(
                child: Text("alle  " + ora, style: TextStyle(fontSize: 18)),
              ),

            ],
          ),
          SizedBox(
            height: 10,
          ),
        Divider(
          color: Colors.black,
        ),





      ],
      ),
    );
  }
}
