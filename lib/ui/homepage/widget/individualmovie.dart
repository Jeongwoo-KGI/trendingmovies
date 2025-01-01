import 'package:flutter/material.dart';
import 'package:trendingmovies/ui/detailpage/detailpage.dart';

class IndividualMovie extends StatelessWidget{
  final String imageURL;
  final double width;
  final double height;

  //constructor
  IndividualMovie({required this.imageURL, this.width= 80, this.height = 180});

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
            child: Image.network(imageURL)?? Image.asset("assets/images/dummy.png"),
          ),
        ),
      ),
    ),
  );
}
}