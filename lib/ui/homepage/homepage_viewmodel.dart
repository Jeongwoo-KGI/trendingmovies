//state of the home page
// - constructs of just checking the data
// does not seem to have that much frequent of a change...
// the time it needs the view model is...
//1. when the 'refresh' is on via scroll (onRefresh)
//2. when the element of each row listview changes. 
// through this MVVM architecture (first, load the first 5)

import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeState {
  bool isFetching = false;
  //List<String> list = List.generate(5, (cont){});

  //constructor
  HomeState({
    required this.isFetching,
  });
}
//VM
class HomepageViewModel extends Notifier<HomeState>{
  //Initial State
  @override
  HomeState build() {
    return HomeState(
      isFetching: false,
    );
  }

  //update state
 Future<void> onRefresh() async {
    if (state.isFetching) {
      return;
    }
    state.isFetching = true;
    await Future.delayed(Duration(milliseconds: 300));
    //refresh
    items = List.generate(20, (index) => index);
    state.isFetching = false;

  }
}

//VM controller
final homepageViewModel = NotifierProvider<HomepageViewModel, HomeState>((){
  return HomepageViewModel();
});
