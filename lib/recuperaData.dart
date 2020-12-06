import 'package:intl/intl.dart';


class Dataoggi {


  final now = DateTime.now();
  var formatter = new DateFormat('dd/MM/yyyy');
  String  formattedDate;


  Dataoggi();

  String printData(){
    final tomorrow = DateTime(now.year, now.month, now.day + 1);
    return formattedDate = "Domani " + formatter.format(tomorrow);
  }


  //var now = new DateTime.now();
  //var formatter = new DateFormat('yyyy-MM-dd');


}