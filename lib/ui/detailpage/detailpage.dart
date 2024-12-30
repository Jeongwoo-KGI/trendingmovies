import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: this comes after the hero
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            //first the image
            SizedBox(
              height: 300,
              width: 250,
              child: Hero(
                tag: 'movie-image',
                child: Expanded(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.network("imageURL"),
                    ),
                  ),
                ),
              ),
            ),
            //then the Summary Info(Title, Date, Description_Short, Duration)
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //Title
                      Text(
                        "title",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: Colors.white,
                        ),
                      ),
                      //Date
                      Text(
                        "Date YYYY-MM-DD",
                        //style theme (14, color white)
                      ),
                    ],
                  ),
                  //row of description in short
                  Text(
                    "DescriptionShort"
                  ),
                  //Row of Duration
                  Text(
                    "Duration"
                  ),
                  //Divider
                  Divider(),
                  //categories in rounded box
                  Row(
                    children: [
                      //categories
                    ],
                  ),
                  //actual Description
                  Text(
                    "Description Long"
                  ),
                  //divider
                  Divider(),
                  //흥행정보 
                  ListView(),
                  //베급사
                  ListView(),
                ],
              ),
            ),
          ],

        ),
      ),
    );
  }
}