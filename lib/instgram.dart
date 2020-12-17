import 'package:flutter/material.dart';

class MyDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white70,
       title:Text("Instagram",
       style:TextStyle(color:Colors.black,
       fontSize: 30,

         fontWeight: FontWeight.bold
       )
       ),
      leading: Icon(Icons.camera_alt,color: Colors.black,),
      centerTitle: true,
      actions: [
        Padding(
          padding:   EdgeInsets.only(right:12.0),
          child: Icon(Icons.send_rounded,color: Colors.black,),
        ),

      ],
    ),
    body:Column(
mainAxisAlignment:MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(

          height: 100,
          child: Expanded(

            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      crossAxisAlignment:CrossAxisAlignment.center,

                      children: [
                        Padding(
                              padding:  EdgeInsets.only(right:15,top:10),
                              child: CircleAvatar (backgroundColor: Colors.black,
                                radius: 30,
                                backgroundImage: AssetImage('images/face.jpg',
                                ),

                              ),
                    ),
                          Padding(
                            padding:   EdgeInsets.only(top:8.0),
                            child: Text("Girl"),
                          )


                      ],
                    );
                  },
                ),
          ),
        ),

        Divider(

          height: 1,
          color: Colors.grey[300],
          thickness: 2,

        )

      ],
    ));
  }
}
