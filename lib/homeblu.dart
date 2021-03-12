import 'package:flutter/material.dart';
import 'package:sapassadomantter/tipoicone.dart';
import 'giornirifiutiblu.dart';
import 'recuperaData.dart';
import 'giornirifiuti.dart';

class HomeBlu extends StatelessWidget {

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
                margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.circular(
                        30) // da un arrotondamento agli spigoli
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "ZONA BLU",
                        style: TextStyle(
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(right: 10),
                        margin: EdgeInsets.only(
                            top: 10, left: 10, right: 10, bottom: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage(
                                iconaDaUtilizzare.percorsoDaUtilizzare(
                                    rifiuto: rifiutodidomaniblu),
                              ),
                              fit: BoxFit.contain,
                            ),
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              // color: Colors.white,
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      30) // da un arrotondamento agli spigoli
                              ),
                              child: Center(
                                child: Text(
                                  rifiutodidomaniblu,
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
            )
          ],
        ),
      ),
    );
  }
}
