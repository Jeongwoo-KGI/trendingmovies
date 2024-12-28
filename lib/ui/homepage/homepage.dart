import 'package:flutter/material.dart';
import 'package:trendingmovies/ui/homepage/listcomponent.dart';
import 'package:trendingmovies/ui/homepage/mosttrendingmovie.dart';

class Homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          
        ),

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              //redirect the data to these widgets 
              // no need to change the data after being built. 
              // but do 'listen' and 'keep an eye' on the change of the data
              // if the dataset changes, change the app items.
              MostTrendingMovie(),
              ListComponent(title: "first"),
              ListComponent(title: "second"),
            ],
          ),
        ),
      ) ,
    );
  }
}