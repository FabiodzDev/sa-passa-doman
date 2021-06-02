import 'package:flutter/material.dart';
import 'package:sapassadomantter/screen/santodelgiornodettaglio.dart';

class WidgetSantiDelGiorno extends StatelessWidget {

  String nomex = " ";
  String tipologiax = " ";
  String datax = " ";
  String permalinkx = " ";
  String urlimmaginex = " ";
  String descrizionex = " ";

  WidgetSantiDelGiorno({@required this.nomex, @required this.tipologiax, @required this.datax, @required this.permalinkx, @required this.urlimmaginex, @required this.descrizionex});

  checkNull(){

    if(nomex == null) {
      nomex = "";
    }
    if(tipologiax == null) {
      tipologiax = "";
    }
    if(datax == null) {
      datax = "";
    }
    if(permalinkx == null) {
      permalinkx = "";
    }
    if(urlimmaginex == null) {
      urlimmaginex = "";
    }
    if(descrizionex == null) {
      descrizionex = "";
    } else {

      descrizionex = descrizionex + " (Clicca sul testo per continuare la lettura).";
    }


  }

  @override
  Widget build(BuildContext context) {

    checkNull();

    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Text(nomex, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),),
          Text(tipologiax),
          //Text(datax),
          Container(
            width: 200,
            child: Image.network(urlimmaginex),

          ),
          SizedBox(
            height: 10,
          ),
          //Text(permalinkx),
          //Text(urlimmaginex),
          GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SantoDelGiornoDettaglio(permalink: permalinkx,),
                    ));

              },
              child: Text(descrizionex, textAlign: TextAlign.justify, style: TextStyle(),)),
        ],
      ),


    );
  }
}
