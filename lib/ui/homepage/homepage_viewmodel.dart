//state of the home page
// - constructs of just checking the data
// does not seem to have that much frequent of a change...
// the time it needs the view model is...
//1. when the 'refresh' is on via scroll (onRefresh)
//2. when the element of each row listview changes. 
// through this MVVM architecture (first, load the first 5)

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trendingmovies/data/dataprovider/dataprovider.dart';
import 'package:trendingmovies/data/domain/movie.dart';

class HomeState {
  bool isFetching = false;
  //List<String> list = List.generate(5, (cont){});
  List<Movie> onDemandMovies;
  List<Movie> favoriteMovies;
  List<Movie> highVotesMovies;
  List<Movie> releaseSoonMovies;

  //constructor
  HomeState({
    required this.isFetching,
    required this.onDemandMovies,
    required this.favoriteMovies,
    required this.highVotesMovies,
    required this.releaseSoonMovies,
  });

  //copy
  HomeState copy({
    List<Movie>? onDemandMovies,
    List<Movie>? favoriteMovies,
    List<Movie>? highVotesMovies,
    List<Movie>? releaseSoonMovies,
  }) {
    return HomeState(
      isFetching: isFetching,
     onDemandMovies: onDemandMovies ?? this.onDemandMovies, 
     favoriteMovies: favoriteMovies ?? this.favoriteMovies, 
     highVotesMovies: highVotesMovies ?? this.highVotesMovies, 
     releaseSoonMovies: releaseSoonMovies ?? this.releaseSoonMovies,
     );
  }
}
//VM
class HomepageViewModel extends Notifier<HomeState?>{
  //Initial State
  @override
  HomeState? build() {
    getMyMovies();
    return null;
  }

  //refresh
 Future<void> onRefresh() async {
    if (state!.isFetching) {
      return;
    }
    state!.isFetching = true;
    await Future.delayed(Duration(milliseconds: 300));
    //refresh
    //add the refresh code here
    state!.isFetching = false;
  }

  //get the list of movies  
  Future<void> getMyMovies() async {
    final onDemands = await ref.read(onDemandProvider).execute() ?? [];
    final favorites = await ref.read(favoritesProvider).execute();
    final highVotes = await ref.read(highVotesProvider).execute();
    final releaseSoons = await ref.read(releaseSoonProvider).execute();

    state = HomeState(
      isFetching: false, 
      onDemandMovies: onDemands!,
      favoriteMovies: favorites!, 
      highVotesMovies: highVotes!, 
      releaseSoonMovies: releaseSoons!,
    );
  }
}

//VM controller
final homepageViewModel = NotifierProvider<HomepageViewModel, HomeState?>((){
  return HomepageViewModel();
});
