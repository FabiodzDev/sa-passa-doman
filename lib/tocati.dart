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
          child: Container(
            color: Colors.yellowAccent.shade100,
            padding: EdgeInsets.all(15),
            child: ListView(
//              mainAxisAlignment: MainAxisAlignment.start,
//              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\"VA TI\"",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue.shade900),
                ),
                Text(
                  "\"NO TOCA TI\"",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue.shade900),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Stanchi di litigare in famiglia per chi deve portar fuori dalla porta i rifiuti?",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(height: 5,),
                Text(
                  "La ruota TOCATI vi viene in aiuto!",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 430,
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
                ),
                SizedBox(
                  height: 10,
                ),

                Container(
                  //margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Text(
                    "Doppio Tap sul triangolino azzurro e aspettate assieme l\'esito.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
