import 'package:flutter/material.dart';
void main() {

  runApp(
      MaterialApp(home: MyRow(),
        debugShowCheckedModeBanner: false,
      ));
}

class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Row"),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

        Expanded(
          flex:2,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,


          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.green,


          ),
        ),
        Expanded(
          flex: 2,
            child:Container(
          width: 100,
          height: 100,
          color: Colors.blue,


        )),
      Container(
        width: 100,
        height: 100,
        color: Colors.blue,)


      ],),
    );
  }
}
