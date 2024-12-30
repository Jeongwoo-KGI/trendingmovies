import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:trendingmovies/data/model/core.dart';

void main() {
  //testing our data that we get from the TMDB database
  test('Core model', (){
    String dummyData = """
    {
      "adult": false,
      "imageURL":"testing.com",
      "originallanguage":"en",
      "overview":"hi there",
      "title":"StarWars II",
      "voteaverage": 9.9,
      "releasedate": "YYYY-MM-DD"
    }
""";
    //1.dummyData -> Map
    Map<String, dynamic> map = jsonDecode(dummyData);

    //2. map -> Core
    Core core = Core.fromJson(map);
    //checking one of the values if it matches the expected value
    expect(core.adult, false); //actual value, matching value to compare
    //lastly check if the toJson method is working as expected
    print(core.toJson());
  });
}