import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:sapassadomantter/screen/youtubedettaglio.dart';

class WidgetVideoYoutube extends StatelessWidget {

  String titoloVideo = " ";
  String nomePagina = " ";
  String linkVideo = " ";

  WidgetVideoYoutube({@required this.titoloVideo, @required this.nomePagina, @required this.linkVideo});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => YoutubeDettaglio(linkVideo: linkVideo),
            ));
        print(linkVideo);

      },
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 60,
                        color: Colors.white,
                        child: Icon(
                          FontAwesome.play_circle,
                          color: Colors.amber,
                          size: 50,),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            width: 300,
                            child: Text(
                              titoloVideo,
                              textAlign: TextAlign.justify,
                              overflow: TextOverflow.fade,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black
                              ),
                            ),

                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 300,
                            child: Text(
                              "di: " + nomePagina,
                              overflow: TextOverflow.fade,
                              style: TextStyle(
                                  fontSize: 18
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                ),

              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 1,
              color: Colors.blue.shade900,
            ),
          ],
        ),
      ),
    );
  }
}
