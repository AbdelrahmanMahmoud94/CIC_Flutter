import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyList()));
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [Icon(Icons.directions_run)],
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding:   EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        color: Colors.red,
                      ),
                      SizedBox(width: 20,),
                      Text("Code Smell"),
                    ],
                  ),

                  Text("Add")
                ],
              ),
            );
          }),
    );
  }
}
