import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trendingmovies/ui/detailpage/detailpage_viewmodel.dart';

void main() {
  
  test('detail page view model test', () async {
    //testing the detail page view model 
    //Provider Container provides within the provider scope, checks out the app testament in such condition
    final providerContainer = ProviderContainer();
    addTearDown(providerContainer.dispose);
    final detailVM = providerContainer.read(detailVMProvider.notifier);
    //initiating the DetailPageModel => empty list
    final initialState = providerContainer.read(detailVMProvider);
    expect(initialState.movies.isEmpty, true);
    //DetailPageVM -> test the searchMovies method
    // await detailVM.searchMovies('네 잘못이야');
    // final searchState = providerContainer.read(detailVMProvider);
    // expect(searchState.movies.isEmpty, false);

    // searchState.movies.forEach((e) {
    //   print(e);
    // });
  });
}