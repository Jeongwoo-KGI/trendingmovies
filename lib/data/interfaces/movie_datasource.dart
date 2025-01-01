import 'package:trendingmovies/data/model/core.dart';
import 'package:trendingmovies/data/model/core_details.dart';

//이거 어디다 사용하는거냐..?
abstract interface class MovieCore {
  Future<Core?> fetchOnDemand();
  Future<Core?> fetchFavorites();
  Future<Core?> fetchHighVotes();
  Future<Core?> fetchReleaseSoon();
  Future<CoreDetails?> fetchDetails();
}