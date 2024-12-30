import 'package:flutter/material.dart';
import 'package:trendingmovies/ui/homepage/individualmovie.dart';
import 'package:trendingmovies/ui/homepage/listcomponent.dart';

class Homepage extends StatefulWidget {

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  //making the home page to be infinitely scrollable + pull to refresh
  List<int> items = List.generate(20, (index) => index);
  bool isFetching = false;

  //function to get more elements
  void fetchMore() async {
    if(isFetching) {
      return;
    } 
    isFetching = true;
    await Future.delayed(Duration(milliseconds: 500));
    final newList = List.generate(20, (index) => items.last + index);
    items.addAll(newList);
    setState(() {
      
    });
    isFetching = false;
  }

  //function to refresh the page
  Future<void> onRefresh() async {
    if (isFetching) {
      return;
    }
    isFetching = true;
    await Future.delayed(Duration(milliseconds: 300));
    //refresh
    items = List.generate(20, (index) => index);
    setState(() {
      
    });
    isFetching = false;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      //making it to notice that it reached the end of the list
      body: NotificationListener(
        onNotification: (notification) {
          if (notification is ScrollUpdateNotification) {
            if(notification.metrics.pixels >= notification.metrics.maxScrollExtent) {
              fetchMore();
            }
          }
        },
        child: SafeArea(
          child: RefreshIndicator(
            onRefresh: onRefresh, //여기에 왜 ()가 들어가면 에러가 나는걸까..?
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  //first, most trending
                  individualMovie(), //url, height, width
                  ListComponent(title: "현재 상영중"),
                  ListComponent(title: "인기순", numberMeters: true),
                  ListComponent(title: "평점높은 순"),
                  ListComponent(title: "개봉예정"),
                ],
              ),
            ),
          ),
        ),
      ) ,
    );
  }
}