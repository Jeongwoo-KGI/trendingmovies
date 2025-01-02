import 'package:trendingmovies/data/interfaces/movie_datasource.dart';
import 'package:trendingmovies/data/model/core.dart';
import 'package:trendingmovies/data/model/core_details.dart';

class CP implements MovieCore{

  @override
  Future<CoreDetails?> fetchDetails() {
    // TODO: implement fetchDetails
    throw UnimplementedError();
  }

  @override
  Future<Core?> fetchFavorites() {
    throw UnimplementedError();
  }

  @override
  Future<Core?> fetchHighVotes() {
    // TODO: implement fetchHighVotes
    throw UnimplementedError();
  }

  @override
  Future<Core?> fetchOnDemand() {
    // TODO: implement fetchOnDemand
    throw UnimplementedError();
  }

  @override
  Future<Core?> fetchReleaseSoon() {
    // TODO: implement fetchReleaseSoon
    throw UnimplementedError();
  }

}