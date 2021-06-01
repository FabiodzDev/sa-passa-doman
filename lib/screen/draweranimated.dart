import 'package:animated_drawer/bloc/generic_bloc.dart';
import 'package:animated_drawer/bloc/home_page_bloc.dart';
import 'package:animated_drawer/bloc/shadow_bloc.dart';
import 'package:animated_drawer/constants/constants.dart';
import 'package:animated_drawer/constants/runtime_variables.dart';
import 'package:animated_drawer/views/animated_drawer.dart';
import 'package:animated_drawer/views/first_layer.dart';
import 'package:animated_drawer/views/home_page.dart';
import 'package:animated_drawer/views/shadow.dart';
import 'package:animated_drawer/views/third_layer.dart';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:sapassadomantter/screen/scrollinoiniziale.dart';
import 'package:sapassadomantter/screen/social.dart';

import 'chisiamo.dart';
import 'contattiapp.dart';

//class DemoApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(home: Home());
//  }
//}

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedDrawer(
      homePageXValue: 150,
      homePageYValue: 80,
      homePageAngle: -0.2,
      homePageSpeed: 250,
      shadowXValue: 122,
      shadowYValue: 110,
      shadowAngle: -0.275,
      shadowSpeed: 550,
      openIcon: Icon(Icons.menu_open, color: Color(0xFF1f186f)),
      closeIcon: Icon(Icons.arrow_back_ios, color: Color(0xFF1f186f)),
      shadowColor: Color(0xFF1F18), // 0xFF4c41a3
      backgroundGradient: LinearGradient(
        colors: [Color(0xFF1f186f), Color(0x850994)],
      ),
      menuPageContent: Padding(
        padding: const EdgeInsets.only(top: 100.0, left: 15),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Image.network(
                "https://www.viviarcole.it/aa_spd_immagini/ic_launcher-playstore.png",
                fit: BoxFit.cover,
                width: 100,
                //height: 150,
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Color(0xFF5950a0),
                thickness: 2,
              ),
              GestureDetector(
                child: ListTile(
                  //leading: Icon(Entypo.info),
                  title: Text(
                    "INFO APP",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  subtitle: Text("Chi siamo e Disclaimer", style: TextStyle(color: Colors.white),),
                ),
                onTap: () {
                 // Navigator.pop(context);

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChiSiamo()));
                },
              ),
              SizedBox(height: 3,),

              GestureDetector(
                child: ListTile(
                  //leading: Icon(Entypo.facebook),
                  title: Text("SOCIAL", style: TextStyle(fontSize: 16, color: Colors.white),),
                  subtitle: Text("Seguici su Facebook", style: TextStyle(color: Colors.white)),
                ),
                onTap: (){

                 // Navigator.pop(context);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Social()));
                },
              ),
              SizedBox(height: 3,),

              GestureDetector(
                child: ListTile(
             //     leading: Icon(FontAwesome5Solid.mail_bulk),
                  title: Text("CONTATTI APP", style: TextStyle(fontSize: 16, color: Colors.white),),
                ),
                onTap: (){

                  //Navigator.pop(context);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ContattiApp()));
                },
              ),
              SizedBox(height: 3,),
              Divider(
                color: Color(0xFF5950a0),
                thickness: 2,
              ),

            ],
          ),
        ),
      ),
      homePageContent: ComplicatedImageDemo(),
    );
  }
}
