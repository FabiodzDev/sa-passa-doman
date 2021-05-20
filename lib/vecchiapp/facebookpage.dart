import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class FacebookPage extends StatelessWidget {

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
          title: Text('SOCIAL'),
          centerTitle: true,
          backgroundColor: Colors.blue[700],
        ),
        body: ListView(
          children: [
            Container(
              height: 190,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'images/facebook.png',
                  ),
                  fit: BoxFit.contain,
                ),
                color: Colors.white,
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(right: 15, left: 15),
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
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700
                  ),
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
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'images/like.jpg',
                  ),
                  fit: BoxFit.contain,
                ),
                color: Colors.white,
              ),
            ),

        ],));
  }
}
