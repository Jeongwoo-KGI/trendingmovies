import 'package:trendingmovies/data/domain/movie.dart';
import 'package:trendingmovies/data/domain/movie_detail.dart';
import 'package:trendingmovies/data/interfaces/movie_repository_interface.dart';

class FetchOnDemandMoviesUsecase {
  final MovieRepositoryInterface movieRepository;
  FetchOnDemandMoviesUsecase(this.movieRepository);

  Future<List<Movie>?> execute() async {
    return await movieRepository.fetchOnDemandMovies();
  }
}

class FetchFavoriteMoviesUsecase {
  final MovieRepositoryInterface movieRepository;
  FetchFavoriteMoviesUsecase(this.movieRepository);

  Future<List<Movie>?> execute() async {
    return await movieRepository.fetchFavoritesMovies();
  }
}

class FetchhighVoteMoviesUsecase {
  final MovieRepositoryInterface movieRepository;
  FetchhighVoteMoviesUsecase(this.movieRepository);

  Future<List<Movie>?> execute() async {
    return await movieRepository.fetchHighVotesMovies();
  }
}

class FetchreleaseSoonMoviesUsecase {
  final MovieRepositoryInterface movieRepository;
  FetchreleaseSoonMoviesUsecase(this.movieRepository);

  Future<List<Movie>?> execute() async {
    return await movieRepository.fetchReleaseSoonMovies();
  }
}

class FetchMovieDetailsUsecase {
  final MovieRepositoryInterface movieRepository;
  FetchMovieDetailsUsecase(this.movieRepository);

  Future<List<MovieDetail>?> execute(int id) async {
    return await movieRepository.fetchMovieDetails();
  }
}