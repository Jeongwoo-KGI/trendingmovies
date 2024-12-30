import 'package:flutter/material.dart';

class ListComponent extends StatelessWidget{
  /*
  numberMeters = to show the numbers or not 
  title = title of the row (category name of the clustered movie set)
  */
  bool numberMeters = false;
  String title = "";
  List<String> dummy = ['A','B','C'];
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
        Container(
          height: 160,
          child: ListView.separated(
            padding: EdgeInsets.only(left: 15, right: 15, top: 2, bottom: 3),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              if (numberMeters == true){
                return Text('A');
              } 
              return Container(
                child: Text('B'),
              );
            }, 
            separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.transparent), 
            itemCount: dummy.length)
        ),
      ],
    );
  }
}