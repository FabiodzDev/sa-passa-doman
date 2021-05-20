import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference {

  String recuperaComune;
  String recuperaZona;
  String recuperaNomeComune;
  String recuperaNomeZona;
  String recuperaColoreZona;
  String recuperaColoreTestoZona;

  Future<void> settaComune(String comunex, String nomeComunex) async {
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();

    sharedPref.setString('comune', comunex);
    sharedPref.setString('nomeComune', nomeComunex);

    print("Comune $nomeComunex settato");
  }

  Future<void> settaZona(String zonax, String nomeZonax) async {
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();

    sharedPref.setString('zona', zonax);
    sharedPref.setString('nomeZona', nomeZonax);

    print("Zona settata");
  }

  Future<void> settaColoreZona(String coloreSfondoZona, String coloreTestoZona) async {
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();

    sharedPref.setString('coloreSfondoZona', coloreSfondoZona);
    sharedPref.setString('coloreTestoZona', coloreTestoZona);

    print("Colore Sfondo Zona E Colore Testo Zona");
  }


  Future<void> rimuoviComuneZona() async {
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();

    sharedPref.remove("comune");
    sharedPref.remove("nomeComune");

    sharedPref.remove("zona");
    sharedPref.remove("nomeZona");

    sharedPref.remove("coloreSfondoZona");
    sharedPref.remove("coloreTestoZona");

    print("Comune e zona rimossi");
  }



  Future<String> recuperaComuneFunz() async {
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();

    recuperaComune = await sharedPref.getString('comune');
    print("Il comune recuperato è $recuperaComune");
    return recuperaComune;
    }

  Future<String> recuperaNomeComuneFunz() async {
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();

    recuperaNomeComune = await sharedPref.getString('nomeComune');
    print("Il Nome comune recuperato è $recuperaNomeComune");
    return recuperaNomeComune;
  }


  Future<String> recuperaZonaFunz() async {
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();

    recuperaZona = await sharedPref.getString('zona');
    print("La zona recuperata è $recuperaZona");
    return recuperaZona;
  }


  Future<String> recuperaNomeZonaFunz() async {
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();

    recuperaNomeZona = await sharedPref.getString('nomeZona');
    print("La zona recuperata è $recuperaNomeZona");
    return recuperaNomeZona;

  }

  Future<String> recuperaColoreZonaFunz() async {
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();

    recuperaColoreZona = await sharedPref.getString('coloreSfondoZona');
    print("Il colore testo è $recuperaColoreZona");
    return recuperaColoreZona;

  }

  Future<String> recuperaColoreTestoZonaFunz() async {
    final SharedPreferences sharedPref = await SharedPreferences.getInstance();

    recuperaColoreTestoZona = await sharedPref.getString('coloreTestoZona');
    print("Il colore testo zona è $recuperaColoreTestoZona");
    return recuperaColoreTestoZona;

  }

  }

