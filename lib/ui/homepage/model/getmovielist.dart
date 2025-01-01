import 'package:trendingmovies/data/model/core.dart';
import 'package:trendingmovies/data/repository/core_repository.dart';

Future<List<Core>>? getmovieList(String title) {
  switch(title) {
    case "현재 상영중": 
      return CoreRepository().fetchOnDemand();
    case "인기순":
      return CoreRepository().fetchFavorites();
    case "평점 높은순":
      return CoreRepository().fetchHighVotes();
    case "개봉예정":
      return CoreRepository().fetchReleaseSoon();
  }
  return null;
}