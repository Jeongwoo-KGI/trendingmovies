import 'package:flutter/material.dart';
import 'package:trendingmovies/ui/detailpage/detailpage.dart';

class IndividualMovie extends StatelessWidget{
  String imageURL = "ch";
  double width = 80;
  double height=180;

  //constructor
  IndividualMovie({required this.imageURL, this.width, this.height});

  @override
  Widget build(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute( 
        builder: (context){
          return DetailPage();
        },
      ),
      );
    },
    
    child: Hero(
      tag: 'movie-image',
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: SizedBox(
          height: height,
          width: width,
          child: Container(
            margin: EdgeInsets.all(1.0),
            padding: EdgeInsets.all(1.0),
            child: Image.network(imageURL),
          ),
        ),
      ),
    ),
  );
}
}