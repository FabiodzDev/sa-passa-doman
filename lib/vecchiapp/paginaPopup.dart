import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:group_button/group_button.dart';

class PaginaPopup extends StatefulWidget {
  @override
  _PaginaPopupState createState() => _PaginaPopupState();
}

class _PaginaPopupState extends State<PaginaPopup> {
  bool valZonaGialla;
  bool valZonaBlu;
  bool selezionata;
  String selezionataIndex;
  Color coloreSelezionato = Colors.black;
  Color coloreSfondo = Colors.white;

  Future<void> settaZonaGialla() async {
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();
    final bool valoreZonaGialla = await sharedPref.setBool("zona", true);
    setState(() => selezionata = true);
    print("Zona Gialla settata");
  }

  Future<void> settaZonaBlu() async {
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();
    final bool valoreZonaBlu = await sharedPref.setBool('zona', false);
    setState(() => selezionata = false);
    print("Zona Blu settata");
  }

  Future<void> rimuoviZona() async {
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();
    sharedPref.remove("zona");

    print("Zone rimosse");
  }

  Future<void> recuperaStatoZona() async {
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();
    final bool recuperaZona = sharedPref.getBool('zona');
    setState(() => selezionata = recuperaZona);
  }

  @override
  Widget build(BuildContext context) {
    recuperaStatoZona();

    impostaSelezionata();

    print(selezionata);
    print(selezionataIndex);

    return Container(
        color: Color(0xff757575),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: coloreSfondo,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              )),
          child: ListView(
            children: [
              Center(child: Text("LA TUA AREA UTENTE")),
              SizedBox(
                height: 40,
              ),
              Text(
                "QUALE ZONA VUOI VEDERE?",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.black87),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: GroupButton(
                    isRadio: true,
                    spacing: 20,
                    onSelected: (index, isSelected) => cosaFare(index),
                    buttons: ["Gialla", "Blu", "Tutte"],
                    selectedButtons: [selezionataIndex],
                    selectedTextStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                    unselectedTextStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                    selectedColor: Colors.grey[300],
                    unselectedColor: Colors.grey[300]),
              ),
              SizedBox(
                height: 60,
              ),
              Center(
                child: Text(
                  "Hai selezionato: $selezionataIndex",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: coloreSelezionato ,
                  ),
                ),
              ),
//              Text(selezionata.toString())
            ],
          ),
        ));
  }

  void cosaFare(int index) {
    print(index);
    if (index == 0) {
      settaZonaGialla();
      impostaSelezionata();
    } else if (index == 1) {
      settaZonaBlu();
      impostaSelezionata();
    } else {
      rimuoviZona();
      impostaSelezionata();
    }
  }

  void impostaSelezionata() {
    recuperaStatoZona();

    if (selezionata == true) {
      setState(() {
        selezionataIndex = "Gialla";
        coloreSelezionato = Colors.yellow.shade700;

      });
    } else if (selezionata == false) {
      setState(() {
        selezionataIndex = "Blu";
        coloreSelezionato = Colors.blue.shade800;

      });
    } else {
      setState(() {
        selezionataIndex = "Tutte";
        coloreSelezionato = Colors.black;

      });
    }
  }
}
