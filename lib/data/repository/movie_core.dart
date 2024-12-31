import 'package:trendingmovies/data/model/core.dart';

abstract interface class MovieCore {
  Future<Core?> searchCore(getPurposeURL("onDemand"));
  Future<Core?> searchCore(getPurposeURL("favorites"));
  Future<Core?> searchCore(getPurposeURL("highVotes"));
  Future<Core?> searchCore(getPurposeURL("releaseSoon"));
  Future<Core?> searchCore(getPurposeURL("details"));
}