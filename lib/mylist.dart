import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: MyList(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyList extends StatelessWidget {
  List<String> Values = ['bike', 'boat', 'Bus', 'car', 'run','bike', 'boat', 'Bus', 'car', 'run','bike', 'boat', 'Bus', 'car', 'run'];
  List<Icon> IconNames = [
    Icon(Icons.bike_scooter),
    Icon(Icons.directions_boat),
    Icon(Icons.car_rental),
    Icon(Icons.bus_alert),
    Icon(Icons.directions_run),
    Icon(Icons.bike_scooter),
    Icon(Icons.directions_boat),
    Icon(Icons.car_rental),
    Icon(Icons.bus_alert),
    Icon(Icons.directions_run),
    Icon(Icons.bike_scooter),
    Icon(Icons.directions_boat),
    Icon(Icons.car_rental),
    Icon(Icons.bus_alert),
    Icon(Icons.directions_run),
    Icon(Icons.bike_scooter),
    Icon(Icons.directions_boat),
    Icon(Icons.car_rental),
    Icon(Icons.bus_alert),
    Icon(Icons.directions_run),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.directions_run),
          title: Text("Listview"),
          centerTitle: true,
        ),
        body: Padding(
          padding:   EdgeInsets.only(top:8.0),
          child: ListView.builder(
              itemCount: Values.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 60,
                  child: Card(
                    child: Row(
                      children: [
                        Padding(
                          padding:   EdgeInsets.only(left:15),
                          child: IconNames[index],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(Values[index])
                      ],
                    ),
                  ),
                );
              }),
        ));
  }
}
