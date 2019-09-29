import 'package:json_annotation/json_annotation.dart';
import 'package:test_flutter/models/current.dart';
import 'package:test_flutter/models/timedweather.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'weathermodel.g.dart';

@JsonSerializable()
class WeatherData {
  double latitude;
  double logitude;
  String timezone;
  Current currently;
  TimedWeather hourly;
  TimedWeather daily;

  WeatherData({
    this.latitude,
    this.logitude,
    this.timezone,
    this.currently,
    this.hourly,
    this.daily
});

  factory WeatherData.fromJson(Map<String, dynamic> json) => _$WeatherDataFromJson(json);
}

