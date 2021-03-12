import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Numeriutili extends StatelessWidget {

  final String numberComune = "0457639614";
  final String numberComuneInfo = "0457639611";
  final String numberIngombranti = "800734989";

  void call(String number) => launch("tel:$number");




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NUMERI DI TELEFONO UTILI"),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/manph.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 30,),
              GestureDetector(
                onTap: () => call(numberComune),
                child: Card(
                  elevation: 30,
                  color: Colors.yellowAccent.shade100,
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          padding: EdgeInsets.all(15),
                          child: Icon(Icons.phone, size: 50, color: Colors.grey,),

                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text("COMUNE DI ARCOLE", style: TextStyle(fontSize: 18),)

                            ),
                            SizedBox(height: 4,),
                            Container(
                                child: Text("Ufficio Tecnico", style: TextStyle(fontSize: 15),)

                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                ),
              ),
              GestureDetector(
                onTap: () => call(numberComuneInfo),
                child: Card(
                  elevation: 30,
                  color: Colors.yellowAccent.shade100,
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          padding: EdgeInsets.all(15),
                          child: Icon(Icons.phone, size: 50, color: Colors.grey,),

                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: Text("COMUNE DI ARCOLE", style: TextStyle(fontSize: 18),)

                            ),
                            SizedBox(height: 4,),
                            Container(
                                child: Text("Per Info e segnalazioni", style: TextStyle(fontSize: 15),)

                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                ),
              ),
              GestureDetector(
                onTap: () => call(numberIngombranti),
                child: Card(
                  elevation: 30,
                  color: Colors.yellowAccent.shade100,
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          padding: EdgeInsets.all(15),
                          child: Icon(Icons.phone, size: 50, color: Colors.grey,),

                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: Text("RITIRO INGOMBRANTI", style: TextStyle(fontSize: 18),)

                            ),
                            SizedBox(height: 4,),
                            Container(
                                child: Text("Numero Verde per prenotare", style: TextStyle(fontSize: 15),)

                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                ),
              ),
              SizedBox(height: 30,)



            ],
          ),
        ),
      ),
    );  }
}
