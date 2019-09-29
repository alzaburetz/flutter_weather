import 'package:json_annotation/json_annotation.dart';
import 'package:test_flutter/models/current.dart';

part 'timedweather.g.dart';


@JsonSerializable()
class TimedWeather {
  String summary;
  String icon;
  List<Current> data;

  TimedWeather({
    this.summary,
    this.icon,
    this.data
  });

  factory TimedWeather.fromJson(Map<String, dynamic> json) => _$TimedWeatherFromJson(json);
}