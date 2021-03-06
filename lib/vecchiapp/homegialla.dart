import 'package:flutter/material.dart';
import 'package:sapassadomantter/vecchiapp/tipoicone.dart';
import 'giornirifiutiblu.dart';
import 'recuperaData.dart';
import 'giornirifiuti.dart';

class HomeGialla extends StatelessWidget {

  final datadomani = Dataoggi();
  final rifiutogiallo = AbbinamentoGiorniRifiuti(); // oggetto rifiuti giallo
  final rifiutoblu = AbbinamentoGiorniRifiutiBLU(); // oggetto rifiuti blu
  final iconaDaUtilizzare = ElencoIcone();
  @override
  Widget build(BuildContext context) {

    String rifiutodidomanigiallo = rifiutogiallo.verifica();
    String rifiutodidomaniblu = rifiutoblu.verifica();

    return SafeArea(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .stretch, // la colonna si estende orizzontalmente
          children: [
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 10),
              height: 35,
              child: Text(
                datadomani.dataDomani(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 27,
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Colors.yellow[200],
                    borderRadius: BorderRadius.circular(
                        30) // da un arrotondamento agli spigoli
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch, // la colonna si estende orizzontalmente
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "ZONA GIALLA",
                        style: TextStyle(
                          color: Colors.yellow.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(right: 10, left: 10),
                        margin: EdgeInsets.only(
                            top: 10, left: 10, right: 10, bottom: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage(
                                iconaDaUtilizzare.percorsoDaUtilizzare(
                                    rifiuto: rifiutodidomanigiallo),
                              ),
                              fit: BoxFit.contain,
                            ),
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      30) // da un arrotondamento agli spigoli
                              ),

                              child: Center(
                                child: Text(
                                  rifiutodidomanigiallo,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        height: 30,
                        width: double.infinity,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
              width: double.infinity, // si prende tutta la larghezza
            ),
          ],
        ),
      ),
    );
  }
}
