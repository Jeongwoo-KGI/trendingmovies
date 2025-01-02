import 'package:trendingmovies/data/domain/movie.dart';
import 'package:trendingmovies/data/domain/movie_detail.dart';
import 'package:trendingmovies/data/interfaces/movie_datasource.dart';
import 'package:trendingmovies/data/interfaces/movie_repository_interface.dart';

class MRI implements MovieRepositoryInterface {
  MRI(this.data);
  final MovieCore data;

  @override
  Future<List<Movie>?> fetchFavoritesMovies() async {
    // TODO: implement fetchFavoritesMovies
    // final list_movies = data.fetchFavoritesMovies();
    // return MRI(list_movies);
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>?> fetchHighVotesMovies() {
    // TODO: implement fetchHighVotesMovies
    throw UnimplementedError();
  }

  @override
  Future<List<MovieDetail>?> fetchMovieDetails() {
    // TODO: implement fetchMovieDetails
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>?> fetchOnDemandMovies() {
    // TODO: implement fetchOnDemandMovies
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>?> fetchReleaseSoonMovies() {
    // TODO: implement fetchReleaseSoonMovies
    throw UnimplementedError();
  }
  
  
}