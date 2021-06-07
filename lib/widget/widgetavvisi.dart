import 'package:flutter/material.dart';

class WidgetAvvisi extends StatelessWidget {

  String data = " - - - ";
  String testoavviso = " ";
  String datascadenzaavviso = " - - - ";
  var arr;



  WidgetAvvisi({@required this.data, @required this.testoavviso, @required this.datascadenzaavviso});

  String sistemaData(){

    arr = data.split('-');
    var dataFormattata = arr[2] + "-" + arr[1] + "-" + arr[0];

    print(dataFormattata);
    return dataFormattata;

  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.notifications,
                color: Colors.pink,
                size: 30.0,
                ),
              Container(
                padding: EdgeInsets.only(left: 10),
                  child: Text("Pubblicato il  ${sistemaData()}" , style: TextStyle(fontSize: 18, color: Colors.black , fontWeight: FontWeight.w700),)),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(testoavviso, textAlign: TextAlign.justify, style: TextStyle(fontSize: 18),),
//          SizedBox(
//            height: 5,
//          ),
         // Text("Scadenza avviso:  ${datascadenzaavviso}", style: TextStyle(fontSize: 16, color: Colors.lightBlue, fontWeight: FontWeight.w500),),

          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.pink,
            height: 15,
            thickness: 1,
          ),

      ],
      ),
    );
  }
}
