import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:sapassadomantter/widget/widgetgreenreport.dart';

class GreenReport extends StatefulWidget {
  @override
  _GreenReportState createState() => _GreenReportState();
}

class _GreenReportState extends State<GreenReport> {

  List<WidgetGreenReport> listaGreenReport = [];

  Future<void> recuperaGreenReport() async {
    var url = Uri.parse(
        "https://www.viviarcole.it/mysqljsonsapassadomarssambienteenergia.php"); // attenzione. Ho dovuto mettere https e non http..altrimenti non funzionava

    try {
      final response = await http.get(url);

      // print(json.decode(response.body));   funziona

      setState(() {
        listaGreenReport = [];
      });
      final datiEstratti = json.decode(response.body);

     // print(datiEstratti);


      datiEstratti.forEach((dati) {

        dati['channel']['item'].forEach((x)
        {
          listaGreenReport.add(WidgetGreenReport(
            title: x['title'],
            link: x['link'],
            datapubblicazione: x['pubDate'],

          ));
        });



        //print(dati['channel']['item'][i]['title'],);


      });

      print(listaGreenReport);
    } catch (error) {
      throw (error);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    recuperaGreenReport();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GREEN REPORT"),
        centerTitle: true,
        brightness: Brightness.dark, // orologio e wifi bianchi


      ),
      body: SafeArea(
        child: ListView(
          children: [
            ...listaGreenReport,
          ],
        ),
      ),
    );
  }
}
