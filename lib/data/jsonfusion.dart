
import 'dart:convert';

Map<String, dynamic> map = {
  "name": 'movie_name',
  "duration" : 100,
};

String jsonSample = """
{
  "name":"movie",
  "duration":100
}
""";

String jsonData = jsonEncode(map);
var decodedData = jsonDecode(jsonSample);
