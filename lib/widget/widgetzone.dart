import 'package:flutter/material.dart';
import 'package:sapassadomantter/screen/scrollinoiniziale.dart';

import '../main.dart';
import '../sharedpreference.dart';

SharedPreference sharedpref = SharedPreference();


class WidgetZone extends StatelessWidget {

  String id;
  String nome;
  String nomeComune;
  String coloreSfondo;
  String coloreTesto;


  WidgetZone({@required this.id, @required this.nome, @required this.nomeComune, @required this.coloreSfondo, @required this.coloreTesto});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 20),
      child: GestureDetector(
        child: Row(
          children: [
//            Text(id),
//            Text(nome),

            Icon(Icons.directions,
              color: Colors.amber,
              size: 40.0,),
            // Container(child: Text(id)),
            SizedBox(width: 20,),
            Container(child:Text(nome, style: TextStyle(fontSize: 18),)),
          ],
        ),
        onTap: () {
          sharedpref.settaZona(id, nome);
          sharedpref.settaColoreZona(coloreSfondo, coloreTesto);
          Navigator.pop(context);

          Navigator.push(context, MaterialPageRoute(builder: (context) => ComplicatedImageDemo()));
          },
      ),
    );
  }
}
