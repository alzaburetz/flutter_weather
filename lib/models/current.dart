import 'package:json_annotation/json_annotation.dart';

part 'current.g.dart';


@JsonSerializable()
class Current {
  dynamic time;
  String summary;
  String icon;
  double nearestStormDistance;
  double nearestStormBearing;
  double precipIntensity;
  double temperature;
  double apparentTemperature;
  double dewPoint;
  double humidity;
  double pressure;
  double windSpeed;
  double windGust;
  double windBearing;
  double clodCover;
  double uvIndex;
  double visibility;
  double ozone;

  Current({
    this.summary,
    this.time,
    this.icon,
    this.nearestStormBearing,
    this.nearestStormDistance,
    this.precipIntensity,
    this.temperature,
    this.apparentTemperature,
    this.dewPoint,
    this.humidity,
    this.pressure,
    this.windSpeed,
    this.windGust,
    this.windBearing,
    this.ozone,
    this.clodCover,
    this.uvIndex,
    this.visibility
  });

  factory Current.fromJson(Map<String, dynamic> json) => _$CurrentFromJson(json);
}