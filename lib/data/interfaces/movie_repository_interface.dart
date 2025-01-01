import 'package:trendingmovies/data/domain/movie.dart';
import 'package:trendingmovies/data/domain/movie_detail.dart';

abstract interface class MovieRepositoryInterface {
  Future<List<Movie>?> fetchOnDemandMovies();
  Future<List<Movie>?> fetchFavoritesMovies();
  Future<List<Movie>?> fetchHighVotesMovies();
  Future<List<Movie>?> fetchReleaseSoonMovies();
  Future<List<MovieDetail>?> fetchMovieDetails();
}