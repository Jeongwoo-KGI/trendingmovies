import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trendingmovies/ui/homepage/homepage_viewmodel.dart';
import 'package:trendingmovies/ui/homepage/widget/listcomponent.dart';

class Homepage extends StatefulWidget {

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  //making the home page to be infinitely scrollable + pull to refresh
  List<int> items = List.generate(20, (index) => index);
  bool isFetching = false;

  //function to get more elements
  //ToDo: after MVVM architecture implementation, comment this section
  // void fetchMore() async {
  //   if(isFetching) {
  //     return;
  //   } 
  //   isFetching = true;
  //   await Future.delayed(Duration(milliseconds: 500));
  //   final newList = List.generate(20, (index) => items.last + index);
  //   items.addAll(newList);
  //   setState(() {
      
  //   });
  //   isFetching = false;
  // }

  //function to refresh the page
  //ToDo: after MVVM architecture implementation, comment this section
  // Future<void> onRefresh() async {
  //   if (isFetching) {
  //     return;
  //   }
  //   isFetching = true;
  //   await Future.delayed(Duration(milliseconds: 300));
  //   //refresh
  //   items = List.generate(20, (index) => index);
  //   setState(() {
      
  //   });
  //   isFetching = false;

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      //making it to notice that it reached the end of the list
      body: Consumer(
        builder: (context, ref, child) {
          final viewModel = ref.read(homepageViewModel.notifier);
        return SafeArea(
          child: RefreshIndicator(
            //onRefresh : Future<void> 
            onRefresh: () async {
              viewModel.onRefresh();
            }, 
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  //first, most trending
                  //how should I get the single data?
                  //IndividualMovie(getmovieList("onDemand")[1]), //url, height, width
                  ListComponent(title: "현재 상영중"),
                  ListComponent(title: "인기순", numberMeters: true),
                  ListComponent(title: "평점높은 순"),
                  ListComponent(title: "개봉예정"),
                ],
              ),
            ),
          ),
        );},
      ),
    );
  }
}