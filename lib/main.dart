import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trendingmovies/ui/homepage/homepage.dart';
import 'package:trendingmovies/ui/theme/apptheme.dart';

void main() {
  //runApp 시ㄹ행 전 비동기 함수로 데터 초기화
  WidgetsFlutterBinding.ensureInitialized();

  //앱 실행
  runApp(
    ProviderScope(child: MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trending Movies',
      theme: appTheme,
      home: Homepage(),
    );
  }
}

