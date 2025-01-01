//state class
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trendingmovies/data/model/core.dart';
import 'package:trendingmovies/data/repository/core_repository.dart';
import 'package:trendingmovies/data/repository/get_purposeurl.dart';

class DetailState{
  List<Core> movies;
  DetailState(this.movies);
}

//VM
class DetailpageViewmodel extends Notifier<DetailState> {
  @override
  DetailState build() {
    return DetailState([]); //add the movies part later
  }
  //if I am to allow a search engine to be implemented on the detail page,
  //use this code for search property
  //uncomment the detailpage_vm_test.dart for the functionality of this as it requires modification
  Future<void> searchMovies() async {
    //example: favorite movie
    final coreRepository = CoreRepository();
    final movies = await coreRepository.fetchFavorites();
    state = DetailState(movies);
  }
}

//VMProvider
final detailVMProvider = NotifierProvider<DetailpageViewmodel,DetailState>((){
  return DetailpageViewmodel();
});