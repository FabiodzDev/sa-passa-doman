import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DettagliSemina extends StatefulWidget {
  @override
  _DettagliSeminaState createState() => _DettagliSeminaState();
}

class _DettagliSeminaState extends State<DettagliSemina> {

  List<ItemModel> itemData = [];


  Future<void> recuperaVerdure() async {
    var url = Uri.parse(
        "https://www.viviarcole.it/mysqljsonsapassadomadettaglisemina.php"); // attenzione. Ho dovuto mettere https e non http..altrimenti non funzionava

    try {
      final response = await http.get(url);

      // print(json.decode(response.body));   funziona

      setState(() {
        itemData = [];
      });
      final datiEstratti = json.decode(response.body);

      datiEstratti.forEach((dati) {
        itemData.add(ItemModel(
          headerItem: dati['nome_ortaggio'],
          nrgrammisemi: dati['nr_gr_semi'],
          distanzafila: dati['distanza_fila'],
          distanzatrafile: dati['distanza_tra_file'],
          profonditasemina: dati['profondita_semina'],
          temperaturaideale: dati['temperatura_germ'],

          colorsItem: Colors.black,
        ));

        // print(dati['nome_spd_luna']);
      });

      print(itemData);
    } catch (error) {
      throw (error);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    recuperaVerdure();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COME SEMINARE"),
        centerTitle: true,
        brightness: Brightness.dark, // orologio e wifi bianchi

      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: itemData.length,
          itemBuilder: (BuildContext context, int index) {
            return ExpansionPanelList(
              animationDuration: Duration(milliseconds: 1000),
              dividerColor: Colors.red,
              elevation: 1,
              children: [
                ExpansionPanel(
                  body: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,

                          children: [
                            Container(
                                padding: EdgeInsets.only(top: 5),

                                child: Text("Nr / Gr. semi: ", style: TextStyle(fontSize: 17),)
                            ),
                            Container(
                              child: Text(
                                itemData[index].nrgrammisemi,
                                style: TextStyle(
                                    color: Colors.amber[900],
                                    fontSize: 17,
                                    letterSpacing: 0.3,
                                    height: 1),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,

                          children: [
                            Container(
                                padding: EdgeInsets.only(top: 5),

                                child: Text("Distanza nella stessa fila: cm ", style: TextStyle(fontSize: 17),)
                            ),
                            Container(
                              child: Text(
                                itemData[index].distanzafila,
                                style: TextStyle(
                                    color: Colors.amber[900],
                                    fontSize: 17,
                                    letterSpacing: 0.3,
                                    height: 1),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,


                          children: [
                            Container(
                                padding: EdgeInsets.only(top: 5),

                                child: Text("Distanza tra le file: cm ", style: TextStyle(fontSize: 17),)
                            ),
                            Container(
                              child: Text(
                                itemData[index].distanzatrafile,
                                style: TextStyle(
                                    color: Colors.amber[900],
                                    fontSize: 17,
                                    letterSpacing: 0.3,
                                    height: 1),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,


                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 5),
                                child: Text("Porfondità semina: cm ", style: TextStyle(fontSize: 17),)
                            ),
                            Container(
                              child: Text(
                                itemData[index].profonditasemina,
                                style: TextStyle(
                                    color: Colors.amber[900],
                                    fontSize: 17,
                                    letterSpacing: 0.3,
                                    height: 1),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,


                          children: [
                            Container(
                                padding: EdgeInsets.only(top: 5),

                                child: Text("Temp. ideale semina: gradi ", style: TextStyle(fontSize: 17),)
                            ),
                            Container(
                              child: Text(
                                itemData[index].temperaturaideale,
                                style: TextStyle(
                                    color: Colors.amber[900],
                                    fontSize: 17,
                                    letterSpacing: 0.3,
                                    height: 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Container(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        itemData[index].headerItem,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    );
                  },
                  isExpanded: itemData[index].expanded,
                )
              ],
              expansionCallback: (int item, bool status) {
                setState(() {
                  itemData[index].expanded = !itemData[index].expanded;
                });
              },
            );
          },
        ),
      ),
    );
  }

}


class ItemModel {
  bool expanded;
  String headerItem = " ";
  String nrgrammisemi = " ";
  String distanzafila = " ";
  String distanzatrafile = " ";
  String profonditasemina = " ";
  String temperaturaideale = " ";
  Color colorsItem = Colors.black;
  String img;

  ItemModel({@required this.expanded: false, @required this.headerItem, @required this.nrgrammisemi, @required this.distanzafila, @required this.distanzatrafile, @required this.profonditasemina, @required this.temperaturaideale , @required this.colorsItem, @required this.img});
}