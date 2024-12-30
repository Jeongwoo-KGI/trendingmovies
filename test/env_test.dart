
import 'package:flutter_test/flutter_test.dart';
import 'package:trendingmovies/env.dart';

void main() {
  test("load env test", (){
    print("API_KEY : ${Env.apiKey}");
  });
}
//result : passed (12/30/2024)