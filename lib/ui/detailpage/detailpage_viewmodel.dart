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

  void searchMovies(String query) async {
    final coreRepository = CoreRepository(purposeURL: getPurposeURL("onDemand"));
    final movies = await coreRepository.searchCore(query);
    state = DetailState(movies);
  }
}

//auth
final detialVMProvider = NotifierProvider<DetailpageViewmodel,DetailState>((){
  return DetailpageViewmodel();
});