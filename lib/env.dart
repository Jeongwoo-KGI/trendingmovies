import 'package:envied/envied.dart';
import 'package:flutter/foundation.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {

  @EnviedField(varName: 'API_KEY', defaultValue: '', obfuscate: true)
  static String apiKey = _Env.apiKey;

  @EnviedField(varName: 'API_TOKEN',defaultValue: '', obfuscate: true)
  static String apiToken = _Env.apiToken;
}