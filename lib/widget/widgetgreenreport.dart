import 'package:flutter/material.dart';
import 'package:sapassadomantter/screen/greenreportdettaglio.dart';
import 'package:flutter_icons/flutter_icons.dart';


class WidgetGreenReport extends StatelessWidget {
  String title = "CIAO";
  String link = " ";
  String datapubblicazione = " ";

  WidgetGreenReport(
      {@required this.title = "CIAO",
      @required this.link,
      @required this.datapubblicazione});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15, right: 5, left: 5, bottom: 5),
      child: Column(
        children: [
          ListTile(
            title: Text(
              title,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 18),
            ),
            //leading: Icon(Icons.add,),
            trailing: Icon(Icons.nature, color: Colors.green, size: 50,),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GreenReportDettaglio(linkgreenreport: link,),
                  ));
            },
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
