
import 'package:intl/intl.dart';


class Dataoggi {


  final now = DateTime.now();
  var formatter = new DateFormat('dd/MM/yyyy');
  String  formattedDate;
  DateTime tomorrowwwDateTime;


  String dataDomani(){
    DateTime tomorroww = DateTime(now.year, now.month, now.day + 1);
    String tomorrowww = formatter.format(tomorroww);
    //print(tomorrowww);
    //print(tomorroww.toString());

    return tomorrowww;



  }

  DateTime dataDomaniFormatoDateTime(){
    DateTime tomorrowwwDateTime = DateTime(now.year, now.month, now.day + 1);
    //print(tomorrowwwDateTime);

    return tomorrowwwDateTime;

    // tomorroww.toString();   è possibile converire in stringhe anche grazie a questo metodo

  }


}