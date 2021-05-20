import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import '../sharedpreference.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';


class ModalitaDiRaccolta extends StatefulWidget {

  String id_comune;

  ModalitaDiRaccolta({@required this.id_comune});


  @override
  _ModalitaDiRaccoltaState createState() => _ModalitaDiRaccoltaState();
}

class _ModalitaDiRaccoltaState extends State<ModalitaDiRaccolta> {

  String descrizioneCarta = " ";
  String descrizioneVetro = " ";
  String descrizioneVerde = " ";
  String descrizionePlastica = " ";
  String descrizioneSecco = " ";
  String descrizionePannolini = " ";
  String descrizioneUmido = " ";
  String descrizioneRifiutiPericolosi = " ";

  Future<void> recuperaModalitaRaccolta(String id_comune) async {
    var urly = Uri.parse(
        "https://www.viviarcole.it/mysqljsonsapassadomamodalitaraccolta.php?comune=${widget.id_comune}"); // attenzione. Ho dovuto mettere https e non http..altrimenti non funzionava

    try {
      final response = await http.get(urly);

      print(json.decode(response.body));

      final infoDatiModalita = json.decode(response.body);

      infoDatiModalita.forEach((datix) {

        setState(() {
          descrizioneCarta = datix['carta'];
          descrizioneVetro = datix['vetro'];
          descrizioneVerde = datix['verde'];
          descrizionePlastica = datix['plastica'];
          descrizioneSecco = datix['secco'];
          descrizionePannolini = datix['pannolini'];
          descrizioneUmido = datix['umido'];
          descrizioneRifiutiPericolosi = datix['rifiutipericolosi'];

        });

      });


    } catch (error) {
      throw (error);
    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    recuperaModalitaRaccolta(widget.id_comune);

  }



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "MODALITA' DI RACCOLTA",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 100,
                      child: Image.network("https://www.viviarcole.it/aa_spd_immagini/scatola.png"),

                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 200,
                      //color: Colors.white,
                      decoration: BoxDecoration(
                        color: Colors.brown.shade200,
                        border: Border.all(
                          color: Colors.grey,
                          width: 0,
                        ),
                      ),
                      child: Column(
                        children: [
                          Expanded(
//                            padding: EdgeInsets.only(bottom: 10),
//                            height: 17,
                            child: Center(
                                child: Text(
                                  'CARTA E CARTONE',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Expanded(child: Container()),
                                LikeButton(
                                  size: 30,
                                  circleColor: CircleColor(
                                      start: Color(0xff00ddff),
                                      end: Color(0xff0099cc)),
                                  bubblesColor: BubblesColor(
                                    dotPrimaryColor: Color(0xff33b5e5),
                                    dotSecondaryColor: Color(0xff0099cc),
                                  ),
                                  likeBuilder: (bool isLiked) {
                                    return Icon(
                                      Icons.arrow_back,
                                      color:
                                      isLiked ? Colors.brown : Colors.brown,
                                      size: 20,
                                    );
                                  },
                                  likeCount: 0,
                                  countBuilder:
                                      (int count, bool isLiked, String text) {
                                    var color =
                                    isLiked ? Colors.brown : Colors.brown;
                                    Widget result;
                                    if (count == 0) {
                                      result = Text(
                                        "Scorrimi",
                                        style: TextStyle(
                                            color: color,
                                            fontSize: 15,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w800),
                                      );
                                    } else
                                      result = Text(
                                        "Scorrimi",
                                        style: TextStyle(
                                            color: color,
                                            fontSize: 15,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w800),
                                      );
                                    return result;
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 180,
                      color: Colors.brown.shade600,
                      child: Center(
                          child: Text(
                            'Qualsiasi tipologia di carta.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 300,
                      color: Colors.brown.shade900,
                      child: Center(
                          child: Text(
                              descrizioneCarta,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ))),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 100,
                      child: Image.network("https://www.viviarcole.it/aa_spd_immagini/vetro.png"),

                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 200,
                      color: Colors.blueGrey.shade400,
                      child: Column(children: [
                        Expanded(
                          child: Center(
                              child: Text(
                                'VETRO',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Expanded(child: Container()),
                              LikeButton(
                                size: 30,
                                circleColor: CircleColor(
                                    start: Color(0xff00ddff),
                                    end: Color(0xff0099cc)),
                                bubblesColor: BubblesColor(
                                  dotPrimaryColor: Color(0xff33b5e5),
                                  dotSecondaryColor: Color(0xff0099cc),
                                ),
                                likeBuilder: (bool isLiked) {
                                  return Icon(
                                    Icons.arrow_back,
                                    color: isLiked
                                        ? Colors.blueGrey.shade800
                                        : Colors.blueGrey.shade800,
                                    size: 20,
                                  );
                                },
                                likeCount: 0,
                                countBuilder:
                                    (int count, bool isLiked, String text) {
                                  var color = isLiked
                                      ? Colors.blueGrey.shade800
                                      : Colors.blueGrey.shade800;
                                  Widget result;
                                  if (count == 0) {
                                    result = Text(
                                      "Scorrimi",
                                      style: TextStyle(
                                          color: color,
                                          fontSize: 15,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.w800),
                                    );
                                  } else
                                    result = Text(
                                      "Scorrimi",
                                      style: TextStyle(
                                          color: color,
                                          fontSize: 15,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.w800),
                                    );
                                  return result;
                                },
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 180,
                      color: Colors.blueGrey.shade600,
                      child: Center(
                          child: Text(
                            'Bicchieri, barattoli e altri oggetti in vetro.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 370,
                      color: Colors.blueGrey.shade900,
                      child: Center(
                          child: Text(
                              descrizioneVetro,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ))),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 100,
                      child: Image.network("https://www.viviarcole.it/aa_spd_immagini/verde.png"),

                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 200,
                      color: Colors.green.shade300,
                      child: Column(
                        children: [
                          Expanded(
                            child: Center(
                                child: Text(
                                  'VERDE E RAMAGLIE',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Expanded(child: Container()),
                                LikeButton(
                                  size: 30,
                                  circleColor: CircleColor(
                                      start: Color(0xff00ddff),
                                      end: Color(0xff0099cc)),
                                  bubblesColor: BubblesColor(
                                    dotPrimaryColor: Color(0xff33b5e5),
                                    dotSecondaryColor: Color(0xff0099cc),
                                  ),
                                  likeBuilder: (bool isLiked) {
                                    return Icon(
                                      Icons.arrow_back,
                                      color: isLiked
                                          ? Colors.green.shade800
                                          : Colors.green.shade800,
                                      size: 20,
                                    );
                                  },
                                  likeCount: 0,
                                  countBuilder:
                                      (int count, bool isLiked, String text) {
                                    var color = isLiked
                                        ? Colors.green.shade800
                                        : Colors.green.shade800;
                                    Widget result;
                                    if (count == 0) {
                                      result = Text(
                                        "Scorrimi",
                                        style: TextStyle(
                                            color: color,
                                            fontSize: 15,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w800),
                                      );
                                    } else
                                      result = Text(
                                        "Scorrimi",
                                        style: TextStyle(
                                            color: color,
                                            fontSize: 15,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w800),
                                      );
                                    return result;
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 200,
                      color: Colors.green.shade500,
                      child: Center(
                          child: Text(
                            'Fiori recisi, fogliame, sfalci d\'erba, ramaglie, residui dell\'orto e potatute di alberi e siepi.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 720,
                      color: Colors.green.shade800,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(descrizioneVerde,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              )),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 100,
                      child: Image.network("https://www.viviarcole.it/aa_spd_immagini/plastica.png"),

                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 200,
                      color: Colors.red.shade300,
                      child: Column(
                        children: [
                          Expanded(
                            child: Center(
                                child: Text(
                                  'PLASTICA E LATTINE',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Expanded(child: Container()),
                                LikeButton(
                                  size: 30,
                                  circleColor: CircleColor(
                                      start: Color(0xff00ddff),
                                      end: Color(0xff0099cc)),
                                  bubblesColor: BubblesColor(
                                    dotPrimaryColor: Color(0xff33b5e5),
                                    dotSecondaryColor: Color(0xff0099cc),
                                  ),
                                  likeBuilder: (bool isLiked) {
                                    return Icon(
                                      Icons.arrow_back,
                                      color: isLiked
                                          ? Colors.red.shade800
                                          : Colors.red.shade800,
                                      size: 20,
                                    );
                                  },
                                  likeCount: 0,
                                  countBuilder:
                                      (int count, bool isLiked, String text) {
                                    var color = isLiked
                                        ? Colors.red.shade800
                                        : Colors.red.shade800;
                                    Widget result;
                                    if (count == 0) {
                                      result = Text(
                                        "Scorrimi",
                                        style: TextStyle(
                                            color: color,
                                            fontSize: 15,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w800),
                                      );
                                    } else
                                      result = Text(
                                        "Scorrimi",
                                        style: TextStyle(
                                            color: color,
                                            fontSize: 15,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w800),
                                      );
                                    return result;
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 210,
                      color: Colors.red.shade500,
                      child: Center(
                          child: Text(
                            'Qualsiasi imballaggio in plastica destinato a contenere bibite e alimenti.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 300,
                      color: Colors.red.shade800,
                      child: Center(
                          child: Text(
                              descrizionePlastica,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ))),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 100,
                      child: Image.network("https://www.viviarcole.it/aa_spd_immagini/secco.png"),

                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 200,
                      color: Colors.blue.shade300,
                      child: Column(
                        children: [
                          Expanded(
                            child: Center(
                                child: Text(
                                  'SECCO',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Expanded(child: Container()),
                                LikeButton(
                                  size: 30,
                                  circleColor: CircleColor(
                                      start: Color(0xff00ddff),
                                      end: Color(0xff0099cc)),
                                  bubblesColor: BubblesColor(
                                    dotPrimaryColor: Color(0xff33b5e5),
                                    dotSecondaryColor: Color(0xff0099cc),
                                  ),
                                  likeBuilder: (bool isLiked) {
                                    return Icon(
                                      Icons.arrow_back,
                                      color: isLiked
                                          ? Colors.blue.shade800
                                          : Colors.blue.shade800,
                                      size: 20,
                                    );
                                  },
                                  likeCount: 0,
                                  countBuilder:
                                      (int count, bool isLiked, String text) {
                                    var color = isLiked
                                        ? Colors.blue.shade800
                                        : Colors.blue.shade800;
                                    Widget result;
                                    if (count == 0) {
                                      result = Text(
                                        "Scorrimi",
                                        style: TextStyle(
                                            color: color,
                                            fontSize: 15,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w800),
                                      );
                                    } else
                                      result = Text(
                                        "Scorrimi",
                                        style: TextStyle(
                                            color: color,
                                            fontSize: 15,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w800),
                                      );
                                    return result;
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 250,
                      color: Colors.blue.shade500,
                      child: Center(
                          child: Text(
                            'I rifiuti che non possono essere riciclati ma devono essere smaltiti. ',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 350,
                      color: Colors.blue.shade800,
                      child: Center(
                          child: Text(
                              descrizioneSecco,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ))),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 100,
                      child: Image.network("https://www.viviarcole.it/aa_spd_immagini/pannolini.png"),

                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 200,
                      color: Colors.deepOrange.shade300,
                      child: Column(
                        children: [
                          Expanded(
                            child: Center(
                                child: Text(
                                  'PANNOLINI',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Expanded(child: Container()),
                                LikeButton(
                                  size: 30,
                                  circleColor: CircleColor(
                                      start: Color(0xff00ddff),
                                      end: Color(0xff0099cc)),
                                  bubblesColor: BubblesColor(
                                    dotPrimaryColor: Color(0xff33b5e5),
                                    dotSecondaryColor: Color(0xff0099cc),
                                  ),
                                  likeBuilder: (bool isLiked) {
                                    return Icon(
                                      Icons.arrow_back,
                                      color: isLiked
                                          ? Colors.deepOrange.shade800
                                          : Colors.deepOrange.shade800,
                                      size: 20,
                                    );
                                  },
                                  likeCount: 0,
                                  countBuilder:
                                      (int count, bool isLiked, String text) {
                                    var color = isLiked
                                        ? Colors.deepOrange.shade800
                                        : Colors.deepOrange.shade800;
                                    Widget result;
                                    if (count == 0) {
                                      result = Text(
                                        "Scorrimi",
                                        style: TextStyle(
                                            color: color,
                                            fontSize: 15,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w800),
                                      );
                                    } else
                                      result = Text(
                                        "Scorrimi",
                                        style: TextStyle(
                                            color: color,
                                            fontSize: 15,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w800),
                                      );
                                    return result;
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 250,
                      color: Colors.deepOrange.shade500,
                      child: Center(
                          child: Text(
                            'Pannolini per bambini e anziani.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 280,
                      color: Colors.deepOrange.shade800,
                      child: Center(
                          child: Text(
                              descrizionePannolini,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ))),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 100,
                      child: Image.network("https://www.viviarcole.it/aa_spd_immagini/umido.png"),

                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 200,
                      color: Colors.deepPurple.shade300,
                      child: Column(
                        children: [
                          Expanded(
                            child: Center(
                                child: Text(
                                  'UMIDO',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Expanded(child: Container()),
                                LikeButton(
                                  size: 30,
                                  circleColor: CircleColor(
                                      start: Color(0xff00ddff),
                                      end: Color(0xff0099cc)),
                                  bubblesColor: BubblesColor(
                                    dotPrimaryColor: Color(0xff33b5e5),
                                    dotSecondaryColor: Color(0xff0099cc),
                                  ),
                                  likeBuilder: (bool isLiked) {
                                    return Icon(
                                      Icons.arrow_back,
                                      color: isLiked
                                          ? Colors.deepPurple.shade800
                                          : Colors.deepPurple.shade800,
                                      size: 20,
                                    );
                                  },
                                  likeCount: 0,
                                  countBuilder:
                                      (int count, bool isLiked, String text) {
                                    var color = isLiked
                                        ? Colors.deepPurple.shade800
                                        : Colors.deepPurple.shade800;
                                    Widget result;
                                    if (count == 0) {
                                      result = Text(
                                        "Scorrimi",
                                        style: TextStyle(
                                            color: color,
                                            fontSize: 15,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w800),
                                      );
                                    } else
                                      result = Text(
                                        "Scorrimi",
                                        style: TextStyle(
                                            color: color,
                                            fontSize: 15,
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w800),
                                      );
                                    return result;
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 280,
                      color: Colors.deepPurple.shade500,
                      child: Center(
                          child: Text(
                            'Rifiuti biodegradabili destinati agli impianti di compostaggio per produrre del fertilizzante.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 250,
                      color: Colors.deepPurple.shade800,
                      child: Center(
                          child: Text(
                              descrizioneUmido,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ))),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 100,
                      child: Image.network("https://www.viviarcole.it/aa_spd_immagini/medicine.png"),

                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Expanded(
                          child: Container(
                            width: 200,
                            //color: Colors.black45,
                            child: Center(
                                child: Text(
                                  'RIFIUTI URBANI ',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.red,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 40,
                          color: Colors.red,
                          child: Center(
                              child: Text(
                                'PERICOLOSI ',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                        ),
                        Expanded(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,

                              children: [
                                SizedBox(
                                  width: 80,
                                ),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  padding: EdgeInsets.only(bottom: 10),

                                  child: Icon(
                                    Icons.arrow_back,
                                    size: 20,
                                    color: Colors.red,
                                  ),

                                ),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  padding: EdgeInsets.only(bottom: 10),


                                  child: Text(
                                    "   Scorrimi",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 15,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 280,
                      color: Colors.black87,
                      child: Center(
                          child: Text(
                            'Pile, farmaci, T.&F. (Bombolette spray)',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 300,
                      color: Colors.black,
                      child: Center(
                          child: Text(
                               descrizioneRifiutiPericolosi,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ))),
                    ),
                    Container(
                      width: 200,
                      child: Row(),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),

              SizedBox(
                height: 10,
              ),

            ],
          )
        ],
      ),
    );
  }
}
