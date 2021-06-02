import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class Social extends StatelessWidget {
  launchURL() async {
    const url = 'https://www.facebook.com/sapassadoman';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SOCIAL"),
          centerTitle: true,
          brightness: Brightness.dark, // orologio e wifi bianchi

        ),
        body: ListView(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(right: 15, left: 15, top: 20),
              child: Text(
                "SA PASSA DOMAN è anche su Facebook.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: SizedBox(
                height: 25,
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(right: 15, left: 15),
              child: Text(
                "Lì verranno pubblicate tutte le notizie ufficiali, tra cui la disponibilità di aggiornamenti e il lancio di nuove funzionalità. Per questo motivo non dimenticarti di mettere il like e di seguire la pagina.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: SizedBox(
                height: 15,
              ),
            ),
            Container(
              color: Colors.white,
              height: 25,
              padding: EdgeInsets.only(right: 15, left: 15),
              child: GestureDetector(
                onTap: launchURL,
                child: Text(
                  "Cerca su FB: @SaPassaDoman ",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: SizedBox(
                height: 15,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 20),
              height: 300,
              color: Colors.white,
              child: GestureDetector(
                  onTap: launchURL,
                  child: Image.network(
                      "https://www.viviarcole.it/aa_spd_immagini/facebook.png")),
            ),
          ],
        ));
  }
}
