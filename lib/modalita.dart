import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class ModalitaDiRaccolta extends StatefulWidget {
  @override
  _ModalitaDiRaccoltaState createState() => _ModalitaDiRaccoltaState();
}

class _ModalitaDiRaccoltaState extends State<ModalitaDiRaccolta> {
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
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'images/scatola.png',
                          ),
                          fit: BoxFit.contain,
                        ),
                        color: Colors.white,
                      ),
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
                              'Va conferito in scatole di cartone, sacchi di carta o legato in pacchi. NO IN SACCHI DI NYLON O ALTRI CONTENITORI.',
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
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'images/vetro.png',
                          ),
                          fit: BoxFit.contain,
                        ),
                        color: Colors.white,
                      ),
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
                      width: 350,
                      color: Colors.blueGrey.shade900,
                      child: Center(
                          child: Text(
                              'Vasetti, bottiglie, bicchieri e altri imballaggi in vetro bisogna conferirli in contenitori o bidoni per un peso massimo di 15 Kg. NO IN SACCHETTI DI PLASTICA. NO SPECCHI, OGGETTI IN CERAMICA, TERRACOTTA, PORCELLANA E LAMPADINE NEON.',
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
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'images/verde.png',
                          ),
                          fit: BoxFit.contain,
                        ),
                        color: Colors.white,
                      ),
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
                      width: 700,
                      color: Colors.green.shade800,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('2 opzioni di raccolta:',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              'Opzione 1: Consegna con proprio mezzo presso il Centro di Raccolta (max 1 mc al giorno).',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              'Opzione 2: Ritiro porta a porta. Bidone da 240 lt. Ramaglie possono essere conferite anche fuori dal bidone ma raccolte in 3-4 fascine di max 50 cm. Questo servizio è a pagamento. Vedere dettagli nel sito del Comune. ',
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
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'images/plastica.png',
                          ),
                          fit: BoxFit.contain,
                        ),
                        color: Colors.white,
                      ),
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
                      width: 200,
                      color: Colors.red.shade500,
                      child: Center(
                          child: Text(
                        'Qualsiasi imballaggio in plastica contenente bibite e alimenti.',
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
                              'Va conferita in sacchi di plastica trasparenti o semitrasparenti.',
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
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'images/secco.png',
                          ),
                          fit: BoxFit.contain,
                        ),
                        color: Colors.white,
                      ),
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
                              'Solo con il servizio di porta a porta. Devono essere conferiti in sacchetti semistrasparenti di max 15 kg di peso (escluso contenitori scarrabili)',
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
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'images/pannolini.png',
                          ),
                          fit: BoxFit.contain,
                        ),
                        color: Colors.white,
                      ),
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
                              'Da conferire in sacchetti semitrasparenti da esporre nei giorni del ritiro del secco.',
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
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'images/umido.png',
                          ),
                          fit: BoxFit.contain,
                        ),
                        color: Colors.white,
                      ),
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
                              'Da conferire nel bidoncino dell\'umido utilizzando sacchi compostabili.',
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
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'images/medicine.png',
                          ),
                          fit: BoxFit.contain,
                        ),
                        color: Colors.white,
                      ),
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
                      width: 250,
                      color: Colors.black,
                      child: Center(
                          child: Text(
                              'Da conferire negli appositi contenitori che si trovano nel territorio e presso il centro di raccolta comunale',
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
              Container(
                padding: EdgeInsets.only(right: 15, left: 15),
                child: Text(
                  'ALTRE INFO:',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  '- IL CENTRO DI RACCOLTA RIFIUTI URBANI PER UTENZE DOMESTICHE SI TROVA IN VIA PAUSELLA A GAZZOLO D\' ARCOLE.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  '- PER IL RITIRO DEGLI INGOMBRANTI E\' NECESSARIA LA PRENOTAZIONE CHIAMANDO IL NUMERO VERDE 800734989 .',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  '- NON UTILIZZARE MAI SACCHETTI NERI.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
