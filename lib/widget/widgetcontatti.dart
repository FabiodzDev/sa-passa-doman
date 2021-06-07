import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class WidgetContatti extends StatelessWidget {

  String primadescrizione = " ";
  String secondadescrizione = " ";
  String numerotelefono = " ";

  WidgetContatti({@required this.primadescrizione, @required this.secondadescrizione, @required this.numerotelefono});


  void call(String number) => launch("tel:$number");

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () => call(numerotelefono),
      child: Container(
        margin: EdgeInsets.only(left: 2, right: 2),
        padding: EdgeInsets.only(left: 10, top: 10, bottom: 10, right: 10),
        child: Card(
          elevation: 40,
          color: Colors.yellowAccent.shade100,
          child: Container(
            height: 80,
            width: double.infinity,
            child: Row(

              children: [
                Container(
                  width: 100,
                  padding: EdgeInsets.all(15),
                  child: Icon(Icons.phone, size: 50, color: Colors.grey,),

                ),
                Flexible(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            child: Text(primadescrizione, maxLines: 2, overflow: TextOverflow.ellipsis, softWrap: false,
                              style: TextStyle(fontSize: 18),
                            )

                        ),
                        SizedBox(height: 4,),
                        Flexible(
                            child: Text(secondadescrizione, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 15),)

                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

        ),
      ),
    );

  }
}
