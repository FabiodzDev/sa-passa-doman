import 'package:flutter/material.dart';
import 'package:sapassadomantter/screen/zonepage.dart';
import 'package:sapassadomantter/sharedpreference.dart';

SharedPreference sharedpref = SharedPreference();

class WidgetComuni extends StatelessWidget {

  String id;
  String nome;
  String nomeIlMeteo;

  WidgetComuni({@required this.id, @required this.nome, @required this.nomeIlMeteo});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: GestureDetector(
        child: Row(
          children: [
            Icon(Icons.home,
                color: Colors.lightBlue,
                size: 40.0,),
            // Container(child: Text(id)),
            SizedBox(width: 20,),
            Container(child:Text(nome, style: TextStyle(fontSize: 18),)),
          ],
        ),
        onTap: () {

            sharedpref.settaComune(id, nome, nomeIlMeteo);
            print ("Il meteo settato $nomeIlMeteo");
            Navigator.pop(context);
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => ZonePage(id_comune: id, nome_comune: nome ,)));},
      ),
    );
  }
}
