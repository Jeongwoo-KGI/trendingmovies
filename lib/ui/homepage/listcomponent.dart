import 'package:flutter/material.dart';

class ListComponent extends StatelessWidget{
  /*
  numberMeters = to show the numbers or not 
  title = title of the row (category name of the clustered movie set)
  */
  bool numberMeters = false;
  String title = "";

  //component
  ListComponent({super.key, required this.title, this.numberMeters = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 3.0, bottom: 1.0, left: 15),
          child: Text(
            title, 
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              
            ),
          ),
        ),
        ListView(
          padding: const EdgeInsets.only(left: 10),
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 80,
              height: 125,
              color: Colors.amber,
              child: Text('1'),
            ),

            Container(
              width: 80,
              height: 125,
              color: Colors.amber,
              child: Text('2'),
            ),

            Container(
              width: 80,
              height: 125,
              color: Colors.amber,
              child: Text('3'),
            ),

          ]
        ),
      ],
    );
  }
}