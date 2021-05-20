import 'package:flutter/material.dart';

class WidgetAltreInfo extends StatelessWidget {

  String info;

  WidgetAltreInfo({@required this.info});


  @override
  Widget build(BuildContext context) {
    return
        Container(
          padding: EdgeInsets.only(top: 5, bottom: 5),
          child: Flexible(child: Text(info, overflow: TextOverflow.clip, style: TextStyle(fontSize: 15),),
    ),
        );
  }
}

