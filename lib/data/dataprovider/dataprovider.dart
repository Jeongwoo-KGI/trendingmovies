import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trendingmovies/data/dataprovider/coreprovider.dart';
import 'package:trendingmovies/data/dataprovider/movierepositoryprovider.dart';
import 'package:trendingmovies/data/interfaces/movie_datasource.dart';
import 'package:trendingmovies/data/interfaces/movie_repository_interface.dart';
import 'package:trendingmovies/data/usecase/movie_repository_usecases.dart';

final movieDataProvider = Provider<MovieCore>(
  (ref) {
    return CP();
  }
);

final movieRepositoryProvider = Provider<MovieRepositoryInterface>(
  (ref) {
    final data = ref.read(movieDataProvider);
    return MRI(data);
  }
);

final onDemandProvider = Provider<FetchOnDemandMoviesUsecase>(
  (ref){
    final movieRepository = ref.read(movieRepositoryProvider);
    return FetchOnDemandMoviesUsecase(movieRepository);
  }
);

final favoritesProvider = Provider<FetchFavoriteMoviesUsecase>(
  (ref){
    final movieRepository = ref.read(movieRepositoryProvider);
    return FetchFavoriteMoviesUsecase(movieRepository);
  }
);
final highVotesProvider = Provider<FetchhighVoteMoviesUsecase>(
  (ref){
    final movieRepository = ref.read(movieRepositoryProvider);
    return FetchhighVoteMoviesUsecase(movieRepository);
  }
);
final releaseSoonProvider = Provider<FetchreleaseSoonMoviesUsecase>(
  (ref){
    final movieRepository = ref.read(movieRepositoryProvider);
    return FetchreleaseSoonMoviesUsecase(movieRepository);
  }
);
final detailProvider = Provider<FetchMovieDetailsUsecase>(
  (ref){
    final movieRepository = ref.read(movieRepositoryProvider);
    return FetchMovieDetailsUsecase(movieRepository);
  }
);