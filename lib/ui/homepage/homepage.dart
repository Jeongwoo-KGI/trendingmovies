import 'package:flutter/material.dart';
import 'package:trendingmovies/ui/homepage/individualmovie.dart';
import 'package:trendingmovies/ui/homepage/listcomponent.dart';

class Homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          
        ),

        body: Column(
          children: [
            //first, most trending
            individualMovie(), //url, height, width
            ListComponent(title: "first"),
            ListComponent(title: "second"),
          ],
        ),
      ) ,
    );
  }
}