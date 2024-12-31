import 'package:flutter_test/flutter_test.dart';
import 'package:trendingmovies/data/repository/core_repository.dart';
import 'package:trendingmovies/data/repository/get_purposeurl.dart';

//check if I am getting the data correctly
void main() {
  test('Core Repository Test', () async {
    CoreRepository coreRepository = CoreRepository(purposeURL: getPurposeURL("onDemand"));
    final test = await coreRepository.searchCore(getPurposeURL("onDemand"));
    expect(test.isEmpty, false);
    //double check if the elements are inputted correctly
    for(var elem in test) {
      print(elem.toJson());
    }
  });
}
//nice result, heading off to connect the dots