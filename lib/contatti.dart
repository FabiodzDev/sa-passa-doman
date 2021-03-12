import 'package:flutter/material.dart';

class Contatti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CONTATTI APP"),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Text(
                "Per suggerimenti e segnalazioni inerenti al funzionamento dell'app scrivere a: ",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              SizedBox(height: 30,),
              Card(
                elevation: 30,
                color: Colors.white,
                child: Container(
                  height: 100,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.email, size: 80, color: Colors.blueGrey,),

                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30, left: 10),
                        child: Text("fabiodalzovo@gmail.com", style: TextStyle(fontSize: 17),),

                      )
                    ],
                  ),
                ),

              )

            ],
          ),
        ),
      ),
    );
  }
}
