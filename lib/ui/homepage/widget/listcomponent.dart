import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trendingmovies/data/model/core.dart';
import 'package:trendingmovies/data/repository/core_repository.dart';
import 'package:trendingmovies/ui/homepage/model/getmovielist.dart';
import 'package:trendingmovies/ui/homepage/widget/individualmovie.dart';

class ListComponent extends StatelessWidget{
  /*
  numberMeters = to show the numbers or not 
  title = title of the row (category name of the clustered movie set)
  */
  String title;
  bool numberMeters;
  
  //class constructor
  ListComponent({required this.title, this.numberMeters = false});  

  Future<List<Core>> movieList() async {return getmovieList(this.title)!;}

  @override 
  Widget build(BuildContext context) {
    // TODO: change it to consumer when ready
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
      SizedBox(
        height: 200,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 15, right: 15, top: 2, bottom: 3),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.transparent), 
          itemCount: 20, //movieList().length, <- 이게 왜 안될까...?
          itemBuilder: (BuildContext context, int index) {
            if (numberMeters == true){
              return Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Positioned(
                    //how to add the future class here
                    child: IndividualMovie(imageURL: ), //add image URL here
                  ),
                  Positioned(
                    left: 0,
                    child: Text(
                      "1",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        //color: 
                      ),
                    ), //change this to the text of 1~10 depending on the inserted element
                  ),
                ],

              );
            } else {
              return DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IndividualMovie(), // add image url here 
              );
            }
          }, 
        ),
      ),
    ],
  );
}}