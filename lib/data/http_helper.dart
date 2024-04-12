// ignore_for_file: duplicate_import

import 'package:flutter_app/data/weather.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'weather.dart';

class HttpHelper {
  // https://api.openweathermap.org/data/2.5/
  // weather?q=toronto&appid=a3ed6c1ece72a83fb60641379b2c87b8
  final String authority = 'api.openweathermap.org';
  final String path = 'data/2.5/weather';
  final String apikey = 'a3ed6c1ece72a83fb60641379b2c87b8';

  Future<Weather> getWeather(String location) async {
    Map<String, dynamic> parameters = {'q': location, 'appId': apikey};
    Uri uri = Uri.https(authority, path, parameters);
    http.Response result = await http.get(uri);
    Map<String, dynamic> data = json.decode(result.body);
    Weather weather = Weather.fromJson(data);
    return weather;
  }
}
