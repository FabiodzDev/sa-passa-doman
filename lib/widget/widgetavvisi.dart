import 'package:flutter/material.dart';

class WidgetAvvisi extends StatelessWidget {

  String data;
  String testoavviso;
  String datascadenzaavviso;


  WidgetAvvisi({@required this.data, @required this.testoavviso, @required this.datascadenzaavviso});

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
          Text("Pubblicato il  ${data}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
          SizedBox(
            height: 5,
          ),
          Text(testoavviso, textAlign: TextAlign.justify, style: TextStyle(fontSize: 18),),
//          SizedBox(
//            height: 5,
//          ),
         // Text("Scadenza avviso:  ${datascadenzaavviso}", style: TextStyle(fontSize: 16, color: Colors.lightBlue, fontWeight: FontWeight.w500),),

          SizedBox(
            height: 10,
          ),
          Divider(),

      ],
      ),
    );
  }
}
