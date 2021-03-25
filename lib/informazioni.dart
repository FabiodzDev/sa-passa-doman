import 'package:flutter/material.dart';

class Informazioni extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('INFORMAZIONI'),
          centerTitle: true,
          backgroundColor: Colors.blue[700],
        ),
      body: SafeArea(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'images/casa.jpg',
                  ),
                  fit: BoxFit.contain,
                ),
                color: Colors.white,
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                "SA PASSA DOMAN è un'applicazione creata a titolo gratuito con lo scopo di offrire ai nostri compaesani di ARCOLE un servizio in più nella raccolta dei rifiuti, monitorando quindi anche tramite smartphone i giorni della raccolta differenziata. ",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            Center(child: Text("SVILUPPATA DA:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,


              children: [
                Container(
                  margin: EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10,),
                  height: 120,
                  width: 120,
                  child: Image.asset('images/fotofabio.png'),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("FABIO DAL ZOVO", style: TextStyle(fontSize: 20),),
                      SizedBox(height: 5,),
                      Text("Impiegato amministrativo e, per ",
                        textAlign: TextAlign.justify,
                      ),
                      Text("passione, sviluppatore di siti ",
                        textAlign: TextAlign.justify,
                      ),
                      Text("web, app iOS, app Android e ",
                        textAlign: TextAlign.justify,
                      ),
                      Text("programmi in VBA",
                        textAlign: TextAlign.justify,
                      ),


                    ],
                  ),

                ),
              ],
            ),
            SizedBox(height: 15,),


            Center(child: Text("DISCLAIMER", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),)),


            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                "Ci teniamo a precisare che non è l'applicazione ufficiale né della società che gestisce la raccolta differenziata né del Comune di Arcole e che quindi non ci teniamo responsabili per eventuali errori, nonostante cercheremo di prestare sempre la massima attenzione.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                "PER LE INFORMAZIONI UFFICIALI FATE AFFIDAMENTO AL SITO DEL COMUNE DI ARCOLE",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800 ),
              ),
            ),
            Container(
              child: Text(
                "www.comunediarcole.it",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800 ),
              ),
            ),
            SizedBox(
              height: 30,
            )


          ],
        ),
      ),
    )
    );
  }
}
