import 'package:http/http.dart' as http;
import 'package:test_flutter/models/weathermodel.dart';

import 'dart:convert';

class GetWeather {
  double latitude;
  double longitude;

  GetWeather({this.latitude, this.longitude});

  //Returns request to the dark sky API
  Future<http.Response> _getResponse() {
    return http.get('https://api.darksky.net/forecast/93f4cd5f0a23b0cdf1b38bd3c449b5db/$latitude,$longitude');
  }

  Future<WeatherData> GetData() async {
    final response = await _getResponse();
    if (response.statusCode == 200)
      {
        return new WeatherData.fromJson(json.decode(response?.body));
      }
    else
      {
        return null;
      }
  }
}