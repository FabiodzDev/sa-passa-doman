import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';


class ContattiApp extends StatefulWidget {
  @override
  _ContattiAppState createState() => _ContattiAppState();
}

class _ContattiAppState extends State<ContattiApp> {

  launchURL() async {
    const url = 'https://www.facebook.com/sapassadoman';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'fabiodalzovo@gmail.com',
      queryParameters: {
        'subject': 'Segnalazione e suggerimenti SA PASSA DOMAN'
      }
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CONTATTI APP"),
        centerTitle: true,
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
              GestureDetector(
                onTap: () => _emailLaunchUri,
                child: Card(
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

                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "oppure contattare la pagina Facebook:",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              SizedBox(
                height: 30,
              ),
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
                        child: Icon(Entypo.facebook, size: 80, color: Colors.blueGrey,),

                      ),
                      GestureDetector(
                        onTap: launchURL,
                        child: Container(
                          padding: EdgeInsets.only(top: 30, left: 10),
                          child: Text("@SaPassaDoman", style: TextStyle(fontSize: 17),),

                        ),
                      )
                    ],
                  ),
                ),

              ),



            ],
          ),
        ),
      ),
    );
  }
}
