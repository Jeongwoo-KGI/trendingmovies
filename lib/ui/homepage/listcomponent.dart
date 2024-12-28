import 'package:flutter/material.dart';

class ListComponent extends StatelessWidget{
  /*
  numberMeters = to show the numbers or not 
  title = title of the row (category name of the clustered movie set)
  */
  bool numberMeters = false;
  String title = "";
  final List <String> entries = <String> ['A', 'B', 'C'];

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
          //horizonal list view requires a fixed height
          //solution found from "https://stackoverflow.com/questions/71543759/when-adding-listview-builder-the-entire-screen-is-goes-blank"
          height: 300,
          child: Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index){
                return SizedBox(
                  height: 120,
                  width: 90,
                  //change the text below with stack that contains image and the number marks
                  //gotta ask the syntax for this (){}()
                  child: () {
                    if (numberMeters == true) {
                      return Center(child:Text('Entry ${entries[index]}'));
                    }
                    return Center(child:Text('no number'));
                  }(),
                );
              },
              padding: const EdgeInsets.only(left: 15), 
              separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.transparent,), 
              itemCount: entries.length,
            ),
          ),
        ),
      ],
    );
  }
}