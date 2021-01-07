import 'package:flutter/material.dart';

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
                      width: 180,
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
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 180,
                      color: Colors.brown.shade300,
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            child: Center(
                                child: Text(
                              'CARTA E CARTONE',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            )),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,

                              children: [
                                Container(
                                  height: 50,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'images/nuovafreccia.png',
                                      ),
                                      fit: BoxFit.contain,
                                    ),
                                    //color: Colors.white,
                                  ),
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
                      color: Colors.brown.shade500,
                      child: Center(child: Text('Qualsiasi tipologia di carta.', textAlign: TextAlign.justify, style: TextStyle(fontSize: 15, color: Colors.white,),)),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 250,
                      color: Colors.brown.shade800,
                      child: Center(child: Text('Va conferito in scatole di cartone, sacchi di carta o legato in pacchi. NO IN SACCHI DI NYLON O ALTRI CONTENITORI.', textAlign: TextAlign.justify, style: TextStyle(fontSize: 15, color: Colors.white,))),
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
                      width: 180,
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
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 180,
                      color: Colors.blueGrey.shade400,
                      child: Center(
                          child: Text(
                            'VETRO',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 180,
                      color: Colors.blueGrey.shade600,
                      child: Center(child: Text('Bicchieri, barattoli e altri oggetti in vetro.', textAlign: TextAlign.justify, style: TextStyle(fontSize: 15, color: Colors.white,),)),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 350,
                      color: Colors.blueGrey.shade900,
                      child: Center(child: Text('Vasetti, bottiglie, bicchieri e altri imballaggi in vetro bisogna conferirli in contenitori o bidoni per un peso massimo di 15 Kg. NO IN SACCHETTI DI PLASTICA. NO SPECCHI, OGGETTI IN CERAMICA, TERRACOTTA, PORCELLANA E LAMPADINE NEON.', textAlign: TextAlign.justify, style: TextStyle(fontSize: 15, color: Colors.white,))),
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
                      width: 180,
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
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 180,
                      color: Colors.green.shade300,
                      child: Center(
                          child: Text(
                            'VERDE E RAMAGLIE',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 200,
                      color: Colors.green.shade500,
                      child: Center(child: Text('Fiori recisi, fogliame, sfalci d\'erba, ramaglie, residui dell\'orto e potatute di alberi e siepi.', textAlign: TextAlign.justify, style: TextStyle(fontSize: 15, color: Colors.white,),)),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 900,
                      color: Colors.green.shade800,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('2 opzioni di raccolta:', textAlign: TextAlign.justify, style: TextStyle(fontSize: 15, color: Colors.white,)),
                          SizedBox(height: 10,),
                          Text('Opzione 1: Consegna con proprio mezzo presso il Centro di Raccolta (max 1 mc al giorno).', textAlign: TextAlign.justify, style: TextStyle(fontSize: 15, color: Colors.white,)),
                          SizedBox(height: 5,),

                          Text('Opzione 2: Ritiro porta a porta. Bidone da 240 lt. Ramaglie posso essere conferite anche fuori dal bidone ma raccolte in 3-4 fascine di max 50 cm. Questo servizio è a pagamento. Vedere dettagli nel sito del Comune. ', textAlign: TextAlign.justify, style: TextStyle(fontSize: 15, color: Colors.white,)),


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
                      width: 180,
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
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 180,
                      color: Colors.red.shade300,
                      child: Center(
                          child: Text(
                            'PLASTICA E LATTINE',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 200,
                      color: Colors.red.shade500,
                      child: Center(child: Text('Qualsiasi imballaggio in plastica contenente bibite e alimenti.', textAlign: TextAlign.justify, style: TextStyle(fontSize: 15, color: Colors.white,),)),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 300,
                      color: Colors.red.shade800,
                      child: Center(child: Text('Va conferita in sacchi di plastica trasparenti o semitrasparenti.', textAlign: TextAlign.justify, style: TextStyle(fontSize: 15, color: Colors.white,))),
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
                      width: 180,
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
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 180,
                      color: Colors.blue.shade300,
                      child: Center(
                          child: Text(
                            'SECCO',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 250,
                      color: Colors.blue.shade500,
                      child: Center(child: Text('I rifiuti che non possono essere riciclati ma devono essere smaltiti. ', textAlign: TextAlign.justify, style: TextStyle(fontSize: 15, color: Colors.white,),)),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 350,
                      color: Colors.blue.shade800,
                      child: Center(child: Text('Solo con il servizio di porta a porta. Devono essere conferiti in sacchetti semistrasparenti di max 15 kg di peso.  col porta a porta utilizzando sacchi semitrasparenti (escluso contenitori scarrabili)', textAlign: TextAlign.justify, style: TextStyle(fontSize: 15, color: Colors.white,))),
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
                      width: 180,
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
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 180,
                      color: Colors.deepOrange.shade300,
                      child: Center(
                          child: Text(
                            'PANNOLINI',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 250,
                      color: Colors.deepOrange.shade500,
                      child: Center(child: Text('Pannolini per bambini e anziani.', textAlign: TextAlign.justify, style: TextStyle(fontSize: 15, color: Colors.white,),)),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 280,
                      color: Colors.deepOrange.shade800,
                      child: Center(child: Text('Da conferire in sacchetti semitrasparenti da esporre nei giorni del ritiro del secco.', textAlign: TextAlign.justify, style: TextStyle(fontSize: 15, color: Colors.white,))),
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
                      width: 180,
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
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 180,
                      color: Colors.deepPurple.shade300,
                      child: Center(
                          child: Text(
                            'UMIDO',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 280,
                      color: Colors.deepPurple.shade500,
                      child: Center(child: Text('Rifiuti biodegradabili destinati agli impianti di compostaggio per produrre del fertilizzante.', textAlign: TextAlign.justify, style: TextStyle(fontSize: 15, color: Colors.white,),)),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 250,
                      color: Colors.deepPurple.shade800,
                      child: Center(child: Text('Da conferire nel bidoncino dell\'umido utilizzando sacchi compostabili.', textAlign: TextAlign.justify, style: TextStyle(fontSize: 15, color: Colors.white,))),
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
                      width: 180,
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
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 180,
                      color: Colors.black45,
                      child: Center(
                          child: Text(
                            'RIFIUTI URBANI PERICOLOSI',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 280,
                      color: Colors.black54,
                      child: Center(child: Text('Pile, farmaci, T.&F. (Bombolette spray)', textAlign: TextAlign.justify, style: TextStyle(fontSize: 15, color: Colors.white,),)),
                    ),
                    Container(
                      padding: EdgeInsets.all(13),
                      width: 250,
                      color: Colors.black,
                      child: Center(child: Text('Da conferire negli appositi contenitori che si trovano nel territorio e presso il centro di raccolta comunale', textAlign: TextAlign.justify, style: TextStyle(fontSize: 15, color: Colors.white,))),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(right: 15, left: 15),

                child: Text('ALTRE INFO:', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
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
