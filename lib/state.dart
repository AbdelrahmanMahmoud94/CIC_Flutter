import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: MyButton(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.directions_run),
          title: Text("Listview"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(x.toString()),
            Center(
              child: FlatButton(
                  minWidth: 150,
                  color: Colors.yellow,
                  onPressed: () {
                    setState(() {
                      x++;
                    });

                    print(x);
                  },
                  child: Text("Add me")),
            ),
            FlatButton(
                onPressed: () {
                  setState(() {
                    x = 0;
                  });
                },
                child: Text("Reset")),

            // Container(
            //
            //
            //   decoration: BoxDecoration(
            //       color: Colors.yellow,
            //     image: DecorationImage(
            //       image: AssetImage('images/dimond.png')
            //
            //     )
            //
            //   ),
            //   width: 300,
            // height: 300,
            //
            // )
            Stack(
              children: [
                Image(
                  image: AssetImage('images/dimond.png'),

                ),
                Align(
                alignment: Alignment.bottomRight,

                  child: Text("Dimaond",
                    style: TextStyle(color: Colors.green,fontSize: 30,
                  ),
                  ),
                )
                // Container(
                //   width: 300,
                //   height: 300,
                //   color: Colors.yellow,
                // ),
                // Positioned(
                //   right: 0,
                //   left: 0,
                //   top: 0,
                //   bottom: 0,
                //   child: Container(
                //     width: 200,
                //     height: 200,
                //     color: Colors.blue,
                //   ),
                // ),
                // Positioned(
                //   left: 0,
                //   bottom: 0,
                //   right: 0,
                //   child: Container(
                //     width: 100,
                //     height: 100,
                //     color: Colors.red,
                //   ),
                // )
              ],
            )
          ],
        ));
  }
}
