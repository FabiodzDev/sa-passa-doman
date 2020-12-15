import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.call,
                size: 50.0,
              ),
              Text(
                'Contact',
                style: TextStyle(fontSize: 50.0),
              ),
            ],
          ),
        )
      ],
    );
  }
}