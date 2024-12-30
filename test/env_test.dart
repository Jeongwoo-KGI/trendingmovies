
import 'package:flutter_test/flutter_test.dart';
import 'package:trendingmovies/env.dart';

void main() {
  test("load env test", (){
    print("API_KEY : ${Env.apiKey}");
  });
  test("load API Token test", (){
    print("API Token : ${Env.apiToken}");
  });
}
//result : passed both test (12/30/2024)