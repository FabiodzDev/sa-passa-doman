import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'dart:math';
import 'package:flutter/material.dart';

class Tocati extends StatefulWidget {
  @override
  _TocatiState createState() => _TocatiState();
}

class _TocatiState extends State<Tocati> {

  int selected = 0;

  final items = <String>[
    'TOCA MI',
    'TOCA TI',
    'TOCA MI',
    'TOCA TI',
    'TOCA MI',
    'TOCA TI',
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TOCATI'),
          centerTitle: true,
          backgroundColor: Colors.blue[700],
        ),
        body: SafeArea(
          child: GestureDetector(
            onTap: () {

              setState(() {
                selected = Random().nextInt(items.length);
              });

        },
            child: Container(
              child: FortuneWheel(
                selected: selected,
                items: [
                  for (var it in items) FortuneItem(child: Text(it)),
                ],
              ),
            ),
          ),
        )
    );
  }


}


