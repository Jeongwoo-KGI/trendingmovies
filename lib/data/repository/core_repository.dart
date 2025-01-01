//first get the 'flutter pub add http' for  this to run

import 'dart:convert';

import 'package:http/http.dart';
import 'package:trendingmovies/data/model/core.dart';
import 'package:trendingmovies/data/repository/get_purposeurl.dart';
import 'package:trendingmovies/env.dart';

class CoreRepository {
  String purposeURL; //url for each purpose 

  CoreRepository({required this.purposeURL});

  Future<List<Core>> searchCore(String purposeURL) async {
    final client = Client();
    final response = await client.get(
      //this time adding .replace to have the query parameters to be considered
      //this matters as it allows us to get Korean Movie results 
      //answer fetched from Stack Overflow : https://stackoverflow.com/questions/52824388/how-do-you-add-query-parameters-to-a-dart-http-request
      Uri.parse(purposeURL).replace(queryParameters: {'language' : 'ko-KR', 'page':'1'}),
      headers: {
        'Authorization': 'Bearer ${Env.apiToken}'
      }
    );
    if(response.statusCode == 200) {
      Map<String, dynamic> map = jsonDecode(response.body);
      final item = List.from(map['results']);
      final iterable = item.map((e) {
        //print(e);
        return Core.fromJson(e);
      });
      //print(iterable);
      final listMovie = iterable.toList();
      return listMovie;
    }
    // response.body;
    // response.statusCode;
    //return empty list when not working properly
    return [];
  }

  Future<List<Core>> fetchOnDemand() {
    return searchCore(getPurposeURL("onDemand"));
  }

  Future<List<Core>> fetchFavorites() {
    return searchCore(getPurposeURL("favorites"));
  } 
  Future<List<Core>> fetchHighVotes() {
    return searchCore(getPurposeURL("highVotes"));
  }
  Future<List<Core>> fetchReleaseSoon() {
    return searchCore(getPurposeURL("releaseSoon"));
  }
  Future<List<Core>> fetchDetails() {
    return searchCore(getPurposeURL("details"));
  }

}

