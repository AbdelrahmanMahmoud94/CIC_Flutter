import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() {

  runApp(
      MaterialApp(home: HomeApp(),
      debugShowCheckedModeBanner: false,
      ));
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Center(
              child: Text("First App"),
            ),
          leading: Icon(Icons.time_to_leave_rounded,color:Colors.red ,),
actions: [Padding(
  padding:  EdgeInsets.only(right:15),
  child:   Icon(Icons.verified_user),
)],

        ),
        body: Column(
          children: [
            Image.network(
              'https://secure.img1-ag.wfcdn.com/im/65351790/resize-h600-w600%5Ecompr-r85/3557/3557816/Mickey+Mouse+%26+Friends.jpg',
              height: 440,
            ),
            //SizedBox(height: 20,),
            Padding(
            //  padding: EdgeInsets.only(top: 5,bottom: 10),
            padding: EdgeInsets.fromLTRB(10,5,10,5),
              child: Text(
                "Mickey Mouse",
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 40,
                       fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
            ),
           // SizedBox(height: 10,),
            Text(
              "Cartoon Character",
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 20,
                     fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold),
            ),

          ],
        ));
    // Image(image:
    // Image.network('https://secure.img1-ag.wfcdn.com/im/65351790/resize-h600-w600%5Ecompr-r85/3557/3557816/Mickey+Mouse+%26+Friends.jpg')
    // //AssetImage('images/dimond.png'))
    // ));
  }
}
