import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: MyButton(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.directions_run),
          title: Text("Listview"),
          centerTitle: true,
        ),
        body:Column(
          children: [

            ButtonTheme(
              minWidth: 200,
              height: 100,
              child: RaisedButton(

                color: Colors.yellow,
                  child: Text("Click me"),
                  onPressed: (){
                  print("dasdads");

                  }),
            ),
            FlatButton(
              minWidth: 150,

              color: Colors.yellow,
                onPressed: (){}, child: Text("Click me")),
            GestureDetector(
              onTap: () =>  print("conti")

              ,
              child: Container(
                width: 150,
                height: 50,
                color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Icon(Icons.directions_run),
                  Text("Click me ")

                ],),
              ),
            )

          ],
        )

    );
  }
}
